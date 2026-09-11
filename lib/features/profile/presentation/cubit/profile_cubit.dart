import 'package:bloc/bloc.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/features/profile/data/model/user_model.dart';
import 'package:books_online/features/profile/domain/usecase/change_password_usecase.dart';
import 'package:books_online/features/profile/domain/usecase/get_me_use_case.dart';
import 'package:books_online/features/profile/domain/usecase/logout_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final GetMeUseCase _getMeUseCase;
  final LogoutUseCase _logoutUseCase;
  final ChangePasswordUseCase _changePasswordUseCase;
  ProfileCubit(this._getMeUseCase, this._logoutUseCase, this._changePasswordUseCase) : super(ProfileState());

  final formKey = GlobalKey<FormBuilderState>();

  Future<void> getMe() async {
    if (isClosed) return;

    emit(state.copyWith(status: Status.loading, mess: ''));

    final result = await _getMeUseCase();

    if (isClosed) return;

    if (result.isSuccess && result.data != null) {
      emit(state.copyWith(status: Status.success, user: result.data, mess: ''));
    } else {
      emit(state.copyWith(status: Status.failure, mess: result.error ?? 'Failed to load profile.'));
    }
  }

  Future<void> logout() async {
    if (isClosed) return;

    emit(state.copyWith(isLoggingOut: true, mess: ''));

    final result = await _logoutUseCase();

    if (isClosed) return;

    if (result.isSuccess) {
      emit(state.copyWith(isLoggingOut: false, logoutSuccess: true, user: null));
    } else {
      emit(state.copyWith(isLoggingOut: false, logoutSuccess: false, mess: result.error ?? 'Logout failed.'));
    }
  }

  Future<void> changePassword({required String currentPassword, required String newPassword}) async {
    if (isClosed) return;

    emit(state.copyWith(isChangingPassword: true, mess: '', changePasswordSuccess: false));

    final result = await _changePasswordUseCase(currentPassword: currentPassword, newPassword: newPassword);

    if (isClosed) return;

    if (result.isSuccess) {
      emit(state.copyWith(isChangingPassword: false, changePasswordSuccess: true, mess: ''));
    } else {
      emit(state.copyWith(isChangingPassword: false, changePasswordSuccess: false, mess: result.error ?? 'Failed to change password.'));
    }
  }
}
