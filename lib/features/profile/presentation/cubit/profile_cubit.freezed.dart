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
  Status get updateStatus => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  String? get selectedImagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isLoggingOut => throw _privateConstructorUsedError;
  bool get logoutSuccess => throw _privateConstructorUsedError;
  bool get isChangingPassword => throw _privateConstructorUsedError;
  bool get changePasswordSuccess => throw _privateConstructorUsedError;
  List<PaymentHistoryModel> get payments => throw _privateConstructorUsedError;
  PaymentMetaModel? get paymentMeta => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  Status get libraryStatus => throw _privateConstructorUsedError;
  List<BookModel> get myLibrary => throw _privateConstructorUsedError;

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
    Status updateStatus,
    String mess,
    UserModel? user,
    String? selectedImagePath,
    String name,
    bool isLoggingOut,
    bool logoutSuccess,
    bool isChangingPassword,
    bool changePasswordSuccess,
    List<PaymentHistoryModel> payments,
    PaymentMetaModel? paymentMeta,
    bool isUpdating,
    Status libraryStatus,
    List<BookModel> myLibrary,
  });

  $UserModelCopyWith<$Res>? get user;
  $PaymentMetaModelCopyWith<$Res>? get paymentMeta;
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
    Object? updateStatus = null,
    Object? mess = null,
    Object? user = freezed,
    Object? selectedImagePath = freezed,
    Object? name = null,
    Object? isLoggingOut = null,
    Object? logoutSuccess = null,
    Object? isChangingPassword = null,
    Object? changePasswordSuccess = null,
    Object? payments = null,
    Object? paymentMeta = freezed,
    Object? isUpdating = null,
    Object? libraryStatus = null,
    Object? myLibrary = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as Status,
            updateStatus:
                null == updateStatus
                    ? _value.updateStatus
                    : updateStatus // ignore: cast_nullable_to_non_nullable
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
            selectedImagePath:
                freezed == selectedImagePath
                    ? _value.selectedImagePath
                    : selectedImagePath // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
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
            payments:
                null == payments
                    ? _value.payments
                    : payments // ignore: cast_nullable_to_non_nullable
                        as List<PaymentHistoryModel>,
            paymentMeta:
                freezed == paymentMeta
                    ? _value.paymentMeta
                    : paymentMeta // ignore: cast_nullable_to_non_nullable
                        as PaymentMetaModel?,
            isUpdating:
                null == isUpdating
                    ? _value.isUpdating
                    : isUpdating // ignore: cast_nullable_to_non_nullable
                        as bool,
            libraryStatus:
                null == libraryStatus
                    ? _value.libraryStatus
                    : libraryStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            myLibrary:
                null == myLibrary
                    ? _value.myLibrary
                    : myLibrary // ignore: cast_nullable_to_non_nullable
                        as List<BookModel>,
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

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMetaModelCopyWith<$Res>? get paymentMeta {
    if (_value.paymentMeta == null) {
      return null;
    }

    return $PaymentMetaModelCopyWith<$Res>(_value.paymentMeta!, (value) {
      return _then(_value.copyWith(paymentMeta: value) as $Val);
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
    Status updateStatus,
    String mess,
    UserModel? user,
    String? selectedImagePath,
    String name,
    bool isLoggingOut,
    bool logoutSuccess,
    bool isChangingPassword,
    bool changePasswordSuccess,
    List<PaymentHistoryModel> payments,
    PaymentMetaModel? paymentMeta,
    bool isUpdating,
    Status libraryStatus,
    List<BookModel> myLibrary,
  });

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $PaymentMetaModelCopyWith<$Res>? get paymentMeta;
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
    Object? updateStatus = null,
    Object? mess = null,
    Object? user = freezed,
    Object? selectedImagePath = freezed,
    Object? name = null,
    Object? isLoggingOut = null,
    Object? logoutSuccess = null,
    Object? isChangingPassword = null,
    Object? changePasswordSuccess = null,
    Object? payments = null,
    Object? paymentMeta = freezed,
    Object? isUpdating = null,
    Object? libraryStatus = null,
    Object? myLibrary = null,
  }) {
    return _then(
      _$ProfileStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as Status,
        updateStatus:
            null == updateStatus
                ? _value.updateStatus
                : updateStatus // ignore: cast_nullable_to_non_nullable
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
        selectedImagePath:
            freezed == selectedImagePath
                ? _value.selectedImagePath
                : selectedImagePath // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
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
        payments:
            null == payments
                ? _value._payments
                : payments // ignore: cast_nullable_to_non_nullable
                    as List<PaymentHistoryModel>,
        paymentMeta:
            freezed == paymentMeta
                ? _value.paymentMeta
                : paymentMeta // ignore: cast_nullable_to_non_nullable
                    as PaymentMetaModel?,
        isUpdating:
            null == isUpdating
                ? _value.isUpdating
                : isUpdating // ignore: cast_nullable_to_non_nullable
                    as bool,
        libraryStatus:
            null == libraryStatus
                ? _value.libraryStatus
                : libraryStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        myLibrary:
            null == myLibrary
                ? _value._myLibrary
                : myLibrary // ignore: cast_nullable_to_non_nullable
                    as List<BookModel>,
      ),
    );
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl({
    this.status = Status.initial,
    this.updateStatus = Status.initial,
    this.mess = '',
    this.user,
    this.selectedImagePath,
    this.name = '',
    this.isLoggingOut = false,
    this.logoutSuccess = false,
    this.isChangingPassword = false,
    this.changePasswordSuccess = false,
    final List<PaymentHistoryModel> payments = const [],
    this.paymentMeta,
    this.isUpdating = false,
    this.libraryStatus = Status.initial,
    final List<BookModel> myLibrary = const [],
  }) : _payments = payments,
       _myLibrary = myLibrary;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Status updateStatus;
  @override
  @JsonKey()
  final String mess;
  @override
  final UserModel? user;
  @override
  final String? selectedImagePath;
  @override
  @JsonKey()
  final String name;
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
  final List<PaymentHistoryModel> _payments;
  @override
  @JsonKey()
  List<PaymentHistoryModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final PaymentMetaModel? paymentMeta;
  @override
  @JsonKey()
  final bool isUpdating;
  @override
  @JsonKey()
  final Status libraryStatus;
  final List<BookModel> _myLibrary;
  @override
  @JsonKey()
  List<BookModel> get myLibrary {
    if (_myLibrary is EqualUnmodifiableListView) return _myLibrary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myLibrary);
  }

  @override
  String toString() {
    return 'ProfileState(status: $status, updateStatus: $updateStatus, mess: $mess, user: $user, selectedImagePath: $selectedImagePath, name: $name, isLoggingOut: $isLoggingOut, logoutSuccess: $logoutSuccess, isChangingPassword: $isChangingPassword, changePasswordSuccess: $changePasswordSuccess, payments: $payments, paymentMeta: $paymentMeta, isUpdating: $isUpdating, libraryStatus: $libraryStatus, myLibrary: $myLibrary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.selectedImagePath, selectedImagePath) ||
                other.selectedImagePath == selectedImagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isLoggingOut, isLoggingOut) ||
                other.isLoggingOut == isLoggingOut) &&
            (identical(other.logoutSuccess, logoutSuccess) ||
                other.logoutSuccess == logoutSuccess) &&
            (identical(other.isChangingPassword, isChangingPassword) ||
                other.isChangingPassword == isChangingPassword) &&
            (identical(other.changePasswordSuccess, changePasswordSuccess) ||
                other.changePasswordSuccess == changePasswordSuccess) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.paymentMeta, paymentMeta) ||
                other.paymentMeta == paymentMeta) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.libraryStatus, libraryStatus) ||
                other.libraryStatus == libraryStatus) &&
            const DeepCollectionEquality().equals(
              other._myLibrary,
              _myLibrary,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    updateStatus,
    mess,
    user,
    selectedImagePath,
    name,
    isLoggingOut,
    logoutSuccess,
    isChangingPassword,
    changePasswordSuccess,
    const DeepCollectionEquality().hash(_payments),
    paymentMeta,
    isUpdating,
    libraryStatus,
    const DeepCollectionEquality().hash(_myLibrary),
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
    final Status updateStatus,
    final String mess,
    final UserModel? user,
    final String? selectedImagePath,
    final String name,
    final bool isLoggingOut,
    final bool logoutSuccess,
    final bool isChangingPassword,
    final bool changePasswordSuccess,
    final List<PaymentHistoryModel> payments,
    final PaymentMetaModel? paymentMeta,
    final bool isUpdating,
    final Status libraryStatus,
    final List<BookModel> myLibrary,
  }) = _$ProfileStateImpl;

  @override
  Status get status;
  @override
  Status get updateStatus;
  @override
  String get mess;
  @override
  UserModel? get user;
  @override
  String? get selectedImagePath;
  @override
  String get name;
  @override
  bool get isLoggingOut;
  @override
  bool get logoutSuccess;
  @override
  bool get isChangingPassword;
  @override
  bool get changePasswordSuccess;
  @override
  List<PaymentHistoryModel> get payments;
  @override
  PaymentMetaModel? get paymentMeta;
  @override
  bool get isUpdating;
  @override
  Status get libraryStatus;
  @override
  List<BookModel> get myLibrary;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
