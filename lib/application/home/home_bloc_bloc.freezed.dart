// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            String userId, String businessId, String bearerToken)
        fetchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String userId, String businessId, String bearerToken)?
        fetchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String userId, String businessId, String bearerToken)?
        fetchUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FetchUser value) fetchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FetchUser value)? fetchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FetchUser value)? fetchUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocEventCopyWith<$Res> {
  factory $HomeBlocEventCopyWith(
          HomeBlocEvent value, $Res Function(HomeBlocEvent) then) =
      _$HomeBlocEventCopyWithImpl<$Res, HomeBlocEvent>;
}

/// @nodoc
class _$HomeBlocEventCopyWithImpl<$Res, $Val extends HomeBlocEvent>
    implements $HomeBlocEventCopyWith<$Res> {
  _$HomeBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$Initialize>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialize with DiagnosticableTreeMixin implements Initialize {
  const _$Initialize();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocEvent.initialize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeBlocEvent.initialize'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            String userId, String businessId, String bearerToken)
        fetchUser,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String userId, String businessId, String bearerToken)?
        fetchUser,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String userId, String businessId, String bearerToken)?
        fetchUser,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FetchUser value) fetchUser,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FetchUser value)? fetchUser,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FetchUser value)? fetchUser,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements HomeBlocEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$FetchUserCopyWith<$Res> {
  factory _$$FetchUserCopyWith(
          _$FetchUser value, $Res Function(_$FetchUser) then) =
      __$$FetchUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String businessId, String bearerToken});
}

/// @nodoc
class __$$FetchUserCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$FetchUser>
    implements _$$FetchUserCopyWith<$Res> {
  __$$FetchUserCopyWithImpl(
      _$FetchUser _value, $Res Function(_$FetchUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? businessId = null,
    Object? bearerToken = null,
  }) {
    return _then(_$FetchUser(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      bearerToken: null == bearerToken
          ? _value.bearerToken
          : bearerToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchUser with DiagnosticableTreeMixin implements FetchUser {
  const _$FetchUser(
      {required this.userId,
      required this.businessId,
      required this.bearerToken});

  @override
  final String userId;
  @override
  final String businessId;
  @override
  final String bearerToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocEvent.fetchUser(userId: $userId, businessId: $businessId, bearerToken: $bearerToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeBlocEvent.fetchUser'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('businessId', businessId))
      ..add(DiagnosticsProperty('bearerToken', bearerToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.bearerToken, bearerToken) ||
                other.bearerToken == bearerToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, businessId, bearerToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserCopyWith<_$FetchUser> get copyWith =>
      __$$FetchUserCopyWithImpl<_$FetchUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            String userId, String businessId, String bearerToken)
        fetchUser,
  }) {
    return fetchUser(userId, businessId, bearerToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String userId, String businessId, String bearerToken)?
        fetchUser,
  }) {
    return fetchUser?.call(userId, businessId, bearerToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String userId, String businessId, String bearerToken)?
        fetchUser,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(userId, businessId, bearerToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FetchUser value) fetchUser,
  }) {
    return fetchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FetchUser value)? fetchUser,
  }) {
    return fetchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FetchUser value)? fetchUser,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(this);
    }
    return orElse();
  }
}

abstract class FetchUser implements HomeBlocEvent {
  const factory FetchUser(
      {required final String userId,
      required final String businessId,
      required final String bearerToken}) = _$FetchUser;

  String get userId;
  String get businessId;
  String get bearerToken;
  @JsonKey(ignore: true)
  _$$FetchUserCopyWith<_$FetchUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isServerError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isAuthError => throw _privateConstructorUsedError;
  UserinfoResponse? get userinfoResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBlocStateCopyWith<HomeBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocStateCopyWith<$Res> {
  factory $HomeBlocStateCopyWith(
          HomeBlocState value, $Res Function(HomeBlocState) then) =
      _$HomeBlocStateCopyWithImpl<$Res, HomeBlocState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      UserinfoResponse? userinfoResponse});
}

/// @nodoc
class _$HomeBlocStateCopyWithImpl<$Res, $Val extends HomeBlocState>
    implements $HomeBlocStateCopyWith<$Res> {
  _$HomeBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isServerError = null,
    Object? isClientError = null,
    Object? isAuthError = null,
    Object? userinfoResponse = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isServerError: null == isServerError
          ? _value.isServerError
          : isServerError // ignore: cast_nullable_to_non_nullable
              as bool,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthError: null == isAuthError
          ? _value.isAuthError
          : isAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      userinfoResponse: freezed == userinfoResponse
          ? _value.userinfoResponse
          : userinfoResponse // ignore: cast_nullable_to_non_nullable
              as UserinfoResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res>
    implements $HomeBlocStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      UserinfoResponse? userinfoResponse});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeBlocStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isServerError = null,
    Object? isClientError = null,
    Object? isAuthError = null,
    Object? userinfoResponse = freezed,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isServerError: null == isServerError
          ? _value.isServerError
          : isServerError // ignore: cast_nullable_to_non_nullable
              as bool,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthError: null == isAuthError
          ? _value.isAuthError
          : isAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      userinfoResponse: freezed == userinfoResponse
          ? _value.userinfoResponse
          : userinfoResponse // ignore: cast_nullable_to_non_nullable
              as UserinfoResponse?,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required this.isServerError,
      required this.isClientError,
      required this.isAuthError,
      required this.userinfoResponse});

  @override
  final bool isLoading;
  @override
  final bool isServerError;
  @override
  final bool isClientError;
  @override
  final bool isAuthError;
  @override
  final UserinfoResponse? userinfoResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocState(isLoading: $isLoading, isServerError: $isServerError, isClientError: $isClientError, isAuthError: $isAuthError, userinfoResponse: $userinfoResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeBlocState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isServerError', isServerError))
      ..add(DiagnosticsProperty('isClientError', isClientError))
      ..add(DiagnosticsProperty('isAuthError', isAuthError))
      ..add(DiagnosticsProperty('userinfoResponse', userinfoResponse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isServerError, isServerError) ||
                other.isServerError == isServerError) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError) &&
            (identical(other.isAuthError, isAuthError) ||
                other.isAuthError == isAuthError) &&
            (identical(other.userinfoResponse, userinfoResponse) ||
                other.userinfoResponse == userinfoResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isServerError,
      isClientError, isAuthError, userinfoResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeBlocState {
  const factory _HomeState(
      {required final bool isLoading,
      required final bool isServerError,
      required final bool isClientError,
      required final bool isAuthError,
      required final UserinfoResponse? userinfoResponse}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  bool get isServerError;
  @override
  bool get isClientError;
  @override
  bool get isAuthError;
  @override
  UserinfoResponse? get userinfoResponse;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
