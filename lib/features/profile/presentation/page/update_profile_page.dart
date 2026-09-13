import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/core/widgets/app_button.dart';
import 'package:books_online/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class UpdateProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const UpdateProfilePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<ProfileCubit>()..getMe(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Update Profile'), centerTitle: true),
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state.updateStatus == Status.success) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Profile updated successfully')));

            context.router.maybePop();
          }

          if (state.updateStatus == Status.failure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.mess.isNotEmpty ? state.mess : 'Update profile failed')));
          }
        },
        builder: (context, state) {
          final user = state.user;

          if (user == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 24),

                // Profile image
                GestureDetector(
                  onTap: () {
                    context.read<ProfileCubit>().selectProfileImage();
                  },
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.grey.shade200,
                        backgroundImage:
                            state.selectedImagePath != null
                                ? FileImage(File(state.selectedImagePath!))
                                : user.imageProfile != null && user.imageProfile!.isNotEmpty
                                ? CachedNetworkImageProvider(user.imageProfile!)
                                : null,
                        child:
                            state.selectedImagePath == null && (user.imageProfile == null || user.imageProfile!.isEmpty)
                                ? const Icon(Icons.person, size: 44, color: Colors.grey)
                                : null,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3A3A3C),
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFF1C1C1E), width: 2),
                          ),
                          child: const Icon(Icons.camera_alt_outlined, size: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 36),

                // Name
                TextFormField(
                  initialValue: user.name ?? '',
                  onChanged: (value) {
                    context.read<ProfileCubit>().nameChanged(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefixIcon: const Icon(Icons.person_outline),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                  ),
                ),

                const SizedBox(height: 20),

                // Email
                TextFormField(
                  initialValue: user.email,
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: const Icon(Icons.email_outlined),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                  ),
                ),

                const Spacer(),

                AppButton(
                  backgroundColor: AppColors.black,
                  text: state.status == Status.loading ? 'Saving...' : 'Save Changes',
                  onPressed:
                      state.status == Status.loading
                          ? null
                          : () {
                            context.read<ProfileCubit>().updateProfile();
                          },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
