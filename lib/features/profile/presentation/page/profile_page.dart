import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:books_online/features/profile/presentation/widgets/header_widget.dart';
import 'package:books_online/features/profile/presentation/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const ProfilePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<ProfileCubit>()..getMe(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator(color: Colors.white));
          }

          if (state.logoutSuccess) {
            context.router.replace(const LoginRoute());
          }

          if (state.status == Status.failure) {
            return Center(child: Text(state.mess, style: const TextStyle(color: Colors.white)));
          }

          final user = state.user;

          if (user == null) {
            return const SizedBox.shrink();
          }

          return SafeArea(
            child: Column(
              children: [
                HeaderWidget(name: user.name ?? 'No name', email: user.email, avatarUrl: user.imageProfile),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                      child: Column(
                        children: [
                          MenuGroupWidget(items: [MenuItemData(icon: Icons.account_balance_wallet_outlined, label: 'Wallet')]),
                          const SizedBox(height: 14),
                          MenuGroupWidget(
                            items: [
                              MenuItemData(
                                icon: Icons.menu_book_outlined,
                                label: 'My Library',
                                onTap: () {
                                  // TODO: context.router.push(MyLibraryRoute());
                                },
                              ),
                              MenuItemData(
                                icon: Icons.bookmark_border,
                                label: 'Saved Books',
                                onTap: () {
                                  // TODO: context.router.push(SavedBooksRoute());
                                },
                              ),
                              MenuItemData(
                                icon: Icons.headphones_outlined,
                                label: 'Continue Listening',
                                onTap: () {
                                  // TODO: context.router.push(ContinueListeningRoute());
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),

                          // Payments: relevant since PayPal is integrated
                          MenuGroupWidget(
                            items: [
                              MenuItemData(
                                icon: Icons.receipt_long_outlined,
                                label: 'Payment History',
                                onTap: () {
                                  TODO:
                                  context.router.push(PaymentHistoryRoute());
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),

                          // Account management
                          MenuGroupWidget(
                            items: [
                              MenuItemData(
                                icon: Icons.edit_outlined,
                                label: 'Edit Profile',
                                onTap: () {
                                  // TODO: context.router.push(EditProfileRoute());
                                },
                              ),
                              MenuItemData(
                                icon: Icons.lock_outline,
                                label: 'Change Password',
                                onTap: () {
                                  context.router.push(ChangePasswordRoute());
                                },
                              ),
                              MenuItemData(
                                icon: Icons.settings_outlined,
                                label: 'Settings',
                                onTap: () {
                                  // TODO: context.router.push(SettingsRoute());
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),

                          // Sign out
                          MenuGroupWidget(
                            items: [
                              MenuItemData(
                                icon: Icons.logout,
                                label: 'Logout',
                                color: Colors.redAccent,
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.noHeader,
                                    animType: AnimType.scale,
                                    customHeader: const Icon(Icons.logout_rounded, size: 60, color: Colors.redAccent),
                                    title: 'Logout',
                                    desc: 'Are you sure you want to logout?',
                                    btnCancelText: 'Cancel',
                                    btnCancelOnPress: () {},
                                    btnOkText: 'Logout',
                                    btnOkColor: AppColors.success,
                                    btnOkOnPress: () {
                                      context.read<ProfileCubit>().logout();
                                    },
                                  ).show();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
