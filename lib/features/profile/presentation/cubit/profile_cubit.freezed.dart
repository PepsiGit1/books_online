// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileState {
  Status get status => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  bool get isLoggingOut => throw _privateConstructorUsedError;
  bool get logoutSuccess => throw _privateConstructorUsedError;
  bool get isChangingPassword => throw _privateConstructorUsedError;
  bool get changePasswordSuccess => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
    ProfileState value,
    $Res Function(ProfileState) then,
  ) = _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({
    Status status,
    String mess,
    UserModel? user,
    bool isLoggingOut,
    bool logoutSuccess,
    bool isChangingPassword,
    bool changePasswordSuccess,
  });

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mess = null,
    Object? user = freezed,
    Object? isLoggingOut = null,
    Object? logoutSuccess = null,
    Object? isChangingPassword = null,
    Object? changePasswordSuccess = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as Status,
            mess:
                null == mess
                    ? _value.mess
                    : mess // ignore: cast_nullable_to_non_nullable
                        as String,
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserModel?,
            isLoggingOut:
                null == isLoggingOut
                    ? _value.isLoggingOut
                    : isLoggingOut // ignore: cast_nullable_to_non_nullable
                        as bool,
            logoutSuccess:
                null == logoutSuccess
                    ? _value.logoutSuccess
                    : logoutSuccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            isChangingPassword:
                null == isChangingPassword
                    ? _value.isChangingPassword
                    : isChangingPassword // ignore: cast_nullable_to_non_nullable
                        as bool,
            changePasswordSuccess:
                null == changePasswordSuccess
                    ? _value.changePasswordSuccess
                    : changePasswordSuccess // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
    _$ProfileStateImpl value,
    $Res Function(_$ProfileStateImpl) then,
  ) = __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    String mess,
    UserModel? user,
    bool isLoggingOut,
    bool logoutSuccess,
    bool isChangingPassword,
    bool changePasswordSuccess,
  });

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
    _$ProfileStateImpl _value,
    $Res Function(_$ProfileStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mess = null,
    Object? user = freezed,
    Object? isLoggingOut = null,
    Object? logoutSuccess = null,
    Object? isChangingPassword = null,
    Object? changePasswordSuccess = null,
  }) {
    return _then(
      _$ProfileStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as Status,
        mess:
            null == mess
                ? _value.mess
                : mess // ignore: cast_nullable_to_non_nullable
                    as String,
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel?,
        isLoggingOut:
            null == isLoggingOut
                ? _value.isLoggingOut
                : isLoggingOut // ignore: cast_nullable_to_non_nullable
                    as bool,
        logoutSuccess:
            null == logoutSuccess
                ? _value.logoutSuccess
                : logoutSuccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        isChangingPassword:
            null == isChangingPassword
                ? _value.isChangingPassword
                : isChangingPassword // ignore: cast_nullable_to_non_nullable
                    as bool,
        changePasswordSuccess:
            null == changePasswordSuccess
                ? _value.changePasswordSuccess
                : changePasswordSuccess // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl({
    this.status = Status.initial,
    this.mess = '',
    this.user,
    this.isLoggingOut = false,
    this.logoutSuccess = false,
    this.isChangingPassword = false,
    this.changePasswordSuccess = false,
  });

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final String mess;
  @override
  final UserModel? user;
  @override
  @JsonKey()
  final bool isLoggingOut;
  @override
  @JsonKey()
  final bool logoutSuccess;
  @override
  @JsonKey()
  final bool isChangingPassword;
  @override
  @JsonKey()
  final bool changePasswordSuccess;

  @override
  String toString() {
    return 'ProfileState(status: $status, mess: $mess, user: $user, isLoggingOut: $isLoggingOut, logoutSuccess: $logoutSuccess, isChangingPassword: $isChangingPassword, changePasswordSuccess: $changePasswordSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoggingOut, isLoggingOut) ||
                other.isLoggingOut == isLoggingOut) &&
            (identical(other.logoutSuccess, logoutSuccess) ||
                other.logoutSuccess == logoutSuccess) &&
            (identical(other.isChangingPassword, isChangingPassword) ||
                other.isChangingPassword == isChangingPassword) &&
            (identical(other.changePasswordSuccess, changePasswordSuccess) ||
                other.changePasswordSuccess == changePasswordSuccess));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    mess,
    user,
    isLoggingOut,
    logoutSuccess,
    isChangingPassword,
    changePasswordSuccess,
  );

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState({
    final Status status,
    final String mess,
    final UserModel? user,
    final bool isLoggingOut,
    final bool logoutSuccess,
    final bool isChangingPassword,
    final bool changePasswordSuccess,
  }) = _$ProfileStateImpl;

  @override
  Status get status;
  @override
  String get mess;
  @override
  UserModel? get user;
  @override
  bool get isLoggingOut;
  @override
  bool get logoutSuccess;
  @override
  bool get isChangingPassword;
  @override
  bool get changePasswordSuccess;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
