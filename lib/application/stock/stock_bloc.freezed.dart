// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String branchId, String bearerToken)
        getstockinfio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String branchId, String bearerToken)? getstockinfio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String branchId, String bearerToken)? getstockinfio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Getstockinfo value) getstockinfio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(Getstockinfo value)? getstockinfio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Getstockinfo value)? getstockinfio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockEventCopyWith<$Res> {
  factory $StockEventCopyWith(
          StockEvent value, $Res Function(StockEvent) then) =
      _$StockEventCopyWithImpl<$Res, StockEvent>;
}

/// @nodoc
class _$StockEventCopyWithImpl<$Res, $Val extends StockEvent>
    implements $StockEventCopyWith<$Res> {
  _$StockEventCopyWithImpl(this._value, this._then);

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
    extends _$StockEventCopyWithImpl<$Res, _$Initialize>
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
    return 'StockEvent.initialize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StockEvent.initialize'));
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
    required TResult Function(String branchId, String bearerToken)
        getstockinfio,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String branchId, String bearerToken)? getstockinfio,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String branchId, String bearerToken)? getstockinfio,
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
    required TResult Function(Getstockinfo value) getstockinfio,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(Getstockinfo value)? getstockinfio,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Getstockinfo value)? getstockinfio,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements StockEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$GetstockinfoCopyWith<$Res> {
  factory _$$GetstockinfoCopyWith(
          _$Getstockinfo value, $Res Function(_$Getstockinfo) then) =
      __$$GetstockinfoCopyWithImpl<$Res>;
  @useResult
  $Res call({String branchId, String bearerToken});
}

/// @nodoc
class __$$GetstockinfoCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$Getstockinfo>
    implements _$$GetstockinfoCopyWith<$Res> {
  __$$GetstockinfoCopyWithImpl(
      _$Getstockinfo _value, $Res Function(_$Getstockinfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
    Object? bearerToken = null,
  }) {
    return _then(_$Getstockinfo(
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
      bearerToken: null == bearerToken
          ? _value.bearerToken
          : bearerToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getstockinfo with DiagnosticableTreeMixin implements Getstockinfo {
  const _$Getstockinfo({required this.branchId, required this.bearerToken});

  @override
  final String branchId;
  @override
  final String bearerToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StockEvent.getstockinfio(branchId: $branchId, bearerToken: $bearerToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StockEvent.getstockinfio'))
      ..add(DiagnosticsProperty('branchId', branchId))
      ..add(DiagnosticsProperty('bearerToken', bearerToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getstockinfo &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.bearerToken, bearerToken) ||
                other.bearerToken == bearerToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branchId, bearerToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetstockinfoCopyWith<_$Getstockinfo> get copyWith =>
      __$$GetstockinfoCopyWithImpl<_$Getstockinfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String branchId, String bearerToken)
        getstockinfio,
  }) {
    return getstockinfio(branchId, bearerToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String branchId, String bearerToken)? getstockinfio,
  }) {
    return getstockinfio?.call(branchId, bearerToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String branchId, String bearerToken)? getstockinfio,
    required TResult orElse(),
  }) {
    if (getstockinfio != null) {
      return getstockinfio(branchId, bearerToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Getstockinfo value) getstockinfio,
  }) {
    return getstockinfio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(Getstockinfo value)? getstockinfio,
  }) {
    return getstockinfio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Getstockinfo value)? getstockinfio,
    required TResult orElse(),
  }) {
    if (getstockinfio != null) {
      return getstockinfio(this);
    }
    return orElse();
  }
}

abstract class Getstockinfo implements StockEvent {
  const factory Getstockinfo(
      {required final String branchId,
      required final String bearerToken}) = _$Getstockinfo;

  String get branchId;
  String get bearerToken;
  @JsonKey(ignore: true)
  _$$GetstockinfoCopyWith<_$Getstockinfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StockState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isServerError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isAuthError => throw _privateConstructorUsedError;
  List<StockResponse> get stockresponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockStateCopyWith<StockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res, StockState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      List<StockResponse> stockresponse});
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res, $Val extends StockState>
    implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

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
    Object? stockresponse = null,
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
      stockresponse: null == stockresponse
          ? _value.stockresponse
          : stockresponse // ignore: cast_nullable_to_non_nullable
              as List<StockResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockStateCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$_StockStateCopyWith(
          _$_StockState value, $Res Function(_$_StockState) then) =
      __$$_StockStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      List<StockResponse> stockresponse});
}

/// @nodoc
class __$$_StockStateCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$_StockState>
    implements _$$_StockStateCopyWith<$Res> {
  __$$_StockStateCopyWithImpl(
      _$_StockState _value, $Res Function(_$_StockState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isServerError = null,
    Object? isClientError = null,
    Object? isAuthError = null,
    Object? stockresponse = null,
  }) {
    return _then(_$_StockState(
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
      stockresponse: null == stockresponse
          ? _value._stockresponse
          : stockresponse // ignore: cast_nullable_to_non_nullable
              as List<StockResponse>,
    ));
  }
}

/// @nodoc

class _$_StockState with DiagnosticableTreeMixin implements _StockState {
  const _$_StockState(
      {required this.isLoading,
      required this.isServerError,
      required this.isClientError,
      required this.isAuthError,
      required final List<StockResponse> stockresponse})
      : _stockresponse = stockresponse;

  @override
  final bool isLoading;
  @override
  final bool isServerError;
  @override
  final bool isClientError;
  @override
  final bool isAuthError;
  final List<StockResponse> _stockresponse;
  @override
  List<StockResponse> get stockresponse {
    if (_stockresponse is EqualUnmodifiableListView) return _stockresponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockresponse);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StockState(isLoading: $isLoading, isServerError: $isServerError, isClientError: $isClientError, isAuthError: $isAuthError, stockresponse: $stockresponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StockState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isServerError', isServerError))
      ..add(DiagnosticsProperty('isClientError', isClientError))
      ..add(DiagnosticsProperty('isAuthError', isAuthError))
      ..add(DiagnosticsProperty('stockresponse', stockresponse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isServerError, isServerError) ||
                other.isServerError == isServerError) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError) &&
            (identical(other.isAuthError, isAuthError) ||
                other.isAuthError == isAuthError) &&
            const DeepCollectionEquality()
                .equals(other._stockresponse, _stockresponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isServerError,
      isClientError,
      isAuthError,
      const DeepCollectionEquality().hash(_stockresponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockStateCopyWith<_$_StockState> get copyWith =>
      __$$_StockStateCopyWithImpl<_$_StockState>(this, _$identity);
}

abstract class _StockState implements StockState {
  const factory _StockState(
      {required final bool isLoading,
      required final bool isServerError,
      required final bool isClientError,
      required final bool isAuthError,
      required final List<StockResponse> stockresponse}) = _$_StockState;

  @override
  bool get isLoading;
  @override
  bool get isServerError;
  @override
  bool get isClientError;
  @override
  bool get isAuthError;
  @override
  List<StockResponse> get stockresponse;
  @override
  @JsonKey(ignore: true)
  _$$_StockStateCopyWith<_$_StockState> get copyWith =>
      throw _privateConstructorUsedError;
}
