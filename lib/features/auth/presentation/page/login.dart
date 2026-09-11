import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/core/widgets/app_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/widgets/app_button.dart';
import 'package:books_online/features/auth/presentation/cubit/auth_cubit.dart';

@RoutePage()
class LoginPage extends StatefulWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<AuthCubit>(), child: this);
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state.status == Status.success) {
                context.router.replace(const HomeRoute());
              }

              if (state.status == Status.failure) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.mess)));
              }
            },
            builder: (context, state) {
              return FormBuilder(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

                    const SizedBox(height: 30),

                    AppTextField(
                      name: 'email',
                      hintText: 'Enter your email',
                      labelText: 'Email',
                      prefixIcon: const Icon(Icons.email_outlined),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Email is required';
                        }

                        if (!value.contains('@')) {
                          return 'Enter a valid email';
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    AppTextField(
                      name: 'password',
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }

                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 24),

                    AppButton(
                      text: 'Login',
                      isLoading: state.status == Status.loading,
                      backgroundColor: Colors.black,
                      onPressed: () {
                        final valid = _formKey.currentState?.saveAndValidate();

                        if (valid != true) return;

                        final values = _formKey.currentState!.value;

                        context.read<AuthCubit>().login(email: values['email'] as String, password: values['password'] as String);
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
