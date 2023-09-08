// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'acceptstock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AcceptstockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            String branchId, String businessId, String bearerToken)
        acceptstocklist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String branchId, String businessId, String bearerToken)?
        acceptstocklist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String branchId, String businessId, String bearerToken)?
        acceptstocklist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AcceptStockList value) acceptstocklist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AcceptStockList value)? acceptstocklist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AcceptStockList value)? acceptstocklist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptstockEventCopyWith<$Res> {
  factory $AcceptstockEventCopyWith(
          AcceptstockEvent value, $Res Function(AcceptstockEvent) then) =
      _$AcceptstockEventCopyWithImpl<$Res, AcceptstockEvent>;
}

/// @nodoc
class _$AcceptstockEventCopyWithImpl<$Res, $Val extends AcceptstockEvent>
    implements $AcceptstockEventCopyWith<$Res> {
  _$AcceptstockEventCopyWithImpl(this._value, this._then);

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
    extends _$AcceptstockEventCopyWithImpl<$Res, _$Initialize>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'AcceptstockEvent.initialize()';
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
            String branchId, String businessId, String bearerToken)
        acceptstocklist,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String branchId, String businessId, String bearerToken)?
        acceptstocklist,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String branchId, String businessId, String bearerToken)?
        acceptstocklist,
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
    required TResult Function(AcceptStockList value) acceptstocklist,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AcceptStockList value)? acceptstocklist,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AcceptStockList value)? acceptstocklist,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements AcceptstockEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$AcceptStockListCopyWith<$Res> {
  factory _$$AcceptStockListCopyWith(
          _$AcceptStockList value, $Res Function(_$AcceptStockList) then) =
      __$$AcceptStockListCopyWithImpl<$Res>;
  @useResult
  $Res call({String branchId, String businessId, String bearerToken});
}

/// @nodoc
class __$$AcceptStockListCopyWithImpl<$Res>
    extends _$AcceptstockEventCopyWithImpl<$Res, _$AcceptStockList>
    implements _$$AcceptStockListCopyWith<$Res> {
  __$$AcceptStockListCopyWithImpl(
      _$AcceptStockList _value, $Res Function(_$AcceptStockList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
    Object? businessId = null,
    Object? bearerToken = null,
  }) {
    return _then(_$AcceptStockList(
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
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

class _$AcceptStockList implements AcceptStockList {
  const _$AcceptStockList(
      {required this.branchId,
      required this.businessId,
      required this.bearerToken});

  @override
  final String branchId;
  @override
  final String businessId;
  @override
  final String bearerToken;

  @override
  String toString() {
    return 'AcceptstockEvent.acceptstocklist(branchId: $branchId, businessId: $businessId, bearerToken: $bearerToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptStockList &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.bearerToken, bearerToken) ||
                other.bearerToken == bearerToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, branchId, businessId, bearerToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptStockListCopyWith<_$AcceptStockList> get copyWith =>
      __$$AcceptStockListCopyWithImpl<_$AcceptStockList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            String branchId, String businessId, String bearerToken)
        acceptstocklist,
  }) {
    return acceptstocklist(branchId, businessId, bearerToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String branchId, String businessId, String bearerToken)?
        acceptstocklist,
  }) {
    return acceptstocklist?.call(branchId, businessId, bearerToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String branchId, String businessId, String bearerToken)?
        acceptstocklist,
    required TResult orElse(),
  }) {
    if (acceptstocklist != null) {
      return acceptstocklist(branchId, businessId, bearerToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AcceptStockList value) acceptstocklist,
  }) {
    return acceptstocklist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AcceptStockList value)? acceptstocklist,
  }) {
    return acceptstocklist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AcceptStockList value)? acceptstocklist,
    required TResult orElse(),
  }) {
    if (acceptstocklist != null) {
      return acceptstocklist(this);
    }
    return orElse();
  }
}

abstract class AcceptStockList implements AcceptstockEvent {
  const factory AcceptStockList(
      {required final String branchId,
      required final String businessId,
      required final String bearerToken}) = _$AcceptStockList;

  String get branchId;
  String get businessId;
  String get bearerToken;
  @JsonKey(ignore: true)
  _$$AcceptStockListCopyWith<_$AcceptStockList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AcceptstockState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isServerError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isAuthError => throw _privateConstructorUsedError;
  StockResponse? get stockresponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AcceptstockStateCopyWith<AcceptstockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptstockStateCopyWith<$Res> {
  factory $AcceptstockStateCopyWith(
          AcceptstockState value, $Res Function(AcceptstockState) then) =
      _$AcceptstockStateCopyWithImpl<$Res, AcceptstockState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      StockResponse? stockresponse});
}

/// @nodoc
class _$AcceptstockStateCopyWithImpl<$Res, $Val extends AcceptstockState>
    implements $AcceptstockStateCopyWith<$Res> {
  _$AcceptstockStateCopyWithImpl(this._value, this._then);

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
    Object? stockresponse = freezed,
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
      stockresponse: freezed == stockresponse
          ? _value.stockresponse
          : stockresponse // ignore: cast_nullable_to_non_nullable
              as StockResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AcceptStockListStateCopyWith<$Res>
    implements $AcceptstockStateCopyWith<$Res> {
  factory _$$_AcceptStockListStateCopyWith(_$_AcceptStockListState value,
          $Res Function(_$_AcceptStockListState) then) =
      __$$_AcceptStockListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      StockResponse? stockresponse});
}

/// @nodoc
class __$$_AcceptStockListStateCopyWithImpl<$Res>
    extends _$AcceptstockStateCopyWithImpl<$Res, _$_AcceptStockListState>
    implements _$$_AcceptStockListStateCopyWith<$Res> {
  __$$_AcceptStockListStateCopyWithImpl(_$_AcceptStockListState _value,
      $Res Function(_$_AcceptStockListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isServerError = null,
    Object? isClientError = null,
    Object? isAuthError = null,
    Object? stockresponse = freezed,
  }) {
    return _then(_$_AcceptStockListState(
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
      stockresponse: freezed == stockresponse
          ? _value.stockresponse
          : stockresponse // ignore: cast_nullable_to_non_nullable
              as StockResponse?,
    ));
  }
}

/// @nodoc

class _$_AcceptStockListState implements _AcceptStockListState {
  const _$_AcceptStockListState(
      {required this.isLoading,
      required this.isServerError,
      required this.isClientError,
      required this.isAuthError,
      required this.stockresponse});

  @override
  final bool isLoading;
  @override
  final bool isServerError;
  @override
  final bool isClientError;
  @override
  final bool isAuthError;
  @override
  final StockResponse? stockresponse;

  @override
  String toString() {
    return 'AcceptstockState(isLoading: $isLoading, isServerError: $isServerError, isClientError: $isClientError, isAuthError: $isAuthError, stockresponse: $stockresponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptStockListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isServerError, isServerError) ||
                other.isServerError == isServerError) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError) &&
            (identical(other.isAuthError, isAuthError) ||
                other.isAuthError == isAuthError) &&
            (identical(other.stockresponse, stockresponse) ||
                other.stockresponse == stockresponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isServerError,
      isClientError, isAuthError, stockresponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptStockListStateCopyWith<_$_AcceptStockListState> get copyWith =>
      __$$_AcceptStockListStateCopyWithImpl<_$_AcceptStockListState>(
          this, _$identity);
}

abstract class _AcceptStockListState implements AcceptstockState {
  const factory _AcceptStockListState(
      {required final bool isLoading,
      required final bool isServerError,
      required final bool isClientError,
      required final bool isAuthError,
      required final StockResponse? stockresponse}) = _$_AcceptStockListState;

  @override
  bool get isLoading;
  @override
  bool get isServerError;
  @override
  bool get isClientError;
  @override
  bool get isAuthError;
  @override
  StockResponse? get stockresponse;
  @override
  @JsonKey(ignore: true)
  _$$_AcceptStockListStateCopyWith<_$_AcceptStockListState> get copyWith =>
      throw _privateConstructorUsedError;
}
