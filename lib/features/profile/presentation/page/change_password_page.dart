import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/constants/app_constants.dart';
import 'package:books_online/core/widgets/app_button.dart';
import 'package:books_online/core/widgets/app_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:books_online/features/profile/presentation/cubit/profile_cubit.dart';

@RoutePage()
class ChangePasswordPage extends StatelessWidget implements AutoRouteWrapper {
  const ChangePasswordPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<ProfileCubit>(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final currentPasswordVisible = ValueNotifier(false);
    final newPasswordVisible = ValueNotifier(false);
    final confirmPasswordVisible = ValueNotifier(false);
    final cubit = context.read<ProfileCubit>();

    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state.changePasswordSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Password changed successfully.')));

          Navigator.of(context).pop();
        }

        if (state.mess.isNotEmpty && !state.isChangingPassword) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.mess)));
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Change Password', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)), centerTitle: true),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: FormBuilder(
              key: cubit.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  const Text('Change your password', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

                  const SizedBox(height: 8),

                  const Text('Enter your current password and choose a new password.', style: TextStyle(color: Colors.grey, fontSize: 14)),

                  const SizedBox(height: 30),

                  ValueListenableBuilder<bool>(
                    valueListenable: currentPasswordVisible,
                    builder: (context, visible, child) {
                      return AppTextField(
                        name: AppConstants.currentPassword,
                        hintText: 'Current password',
                        // labelText: 'Current Password',
                        obscureText: !visible,
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          onPressed: () {
                            currentPasswordVisible.value = !visible;
                          },
                          icon: Icon(visible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Current password is required';
                          }
                          return null;
                        },
                      );
                    },
                  ),

                  const SizedBox(height: 20),

                  ValueListenableBuilder<bool>(
                    valueListenable: newPasswordVisible,
                    builder: (context, visible, child) {
                      return AppTextField(
                        name: AppConstants.newPassword,
                        hintText: 'New password',
                        labelText: 'New Password',
                        obscureText: !visible,
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          onPressed: () {
                            newPasswordVisible.value = !visible;
                          },
                          icon: Icon(visible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'New password is required';
                          }

                          if (value.length < 8) {
                            return 'Password must be at least 8 characters';
                          }

                          return null;
                        },
                      );
                    },
                  ),

                  const SizedBox(height: 20),

                  ValueListenableBuilder<bool>(
                    valueListenable: confirmPasswordVisible,
                    builder: (context, visible, child) {
                      return AppTextField(
                        name: AppConstants.confirmPassword,
                        hintText: 'Confirm new password',
                        labelText: 'Confirm Password',
                        obscureText: !visible,
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          onPressed: () {
                            confirmPasswordVisible.value = !visible;
                          },
                          icon: Icon(visible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }

                          final newPasswordValue = cubit.formKey.currentState?.fields[AppConstants.newPassword]?.value;

                          if (value != newPasswordValue) {
                            return 'Passwords do not match';
                          }

                          return null;
                        },
                      );
                    },
                  ),

                  const SizedBox(height: 35),

                  BlocBuilder<ProfileCubit, ProfileState>(
                    builder: (context, state) {
                      return AppButton(
                        text: 'Change Password',
                        isLoading: state.isChangingPassword,
                        backgroundColor: Colors.black,
                        onPressed: () {
                          final isValid = cubit.formKey.currentState?.saveAndValidate() ?? false;

                          if (!isValid) return;

                          final values = cubit.formKey.currentState!.value;

                          context.read<ProfileCubit>().changePassword(
                            currentPassword: values['currentPassword'] as String,
                            newPassword: values['newPassword'] as String,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
