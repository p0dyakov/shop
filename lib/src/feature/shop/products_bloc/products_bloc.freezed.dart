// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsEvent {
  SfRangeValues get weightValues => throw _privateConstructorUsedError;
  SfRangeValues get priceValues => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String query, SfRangeValues weightValues, SfRangeValues priceValues)
        searchProduct,
    required TResult Function(
            SfRangeValues weightValues, SfRangeValues priceValues)
        changeValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SfRangeValues weightValues,
            SfRangeValues priceValues)?
        searchProduct,
    TResult? Function(SfRangeValues weightValues, SfRangeValues priceValues)?
        changeValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SfRangeValues weightValues,
            SfRangeValues priceValues)?
        searchProduct,
    TResult Function(SfRangeValues weightValues, SfRangeValues priceValues)?
        changeValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_ChangeValues value) changeValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_ChangeValues value)? changeValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_ChangeValues value)? changeValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsEventCopyWith<ProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
  @useResult
  $Res call({SfRangeValues weightValues, SfRangeValues priceValues});
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_value.copyWith(
      weightValues: null == weightValues
          ? _value.weightValues
          : weightValues // ignore: cast_nullable_to_non_nullable
              as SfRangeValues,
      priceValues: null == priceValues
          ? _value.priceValues
          : priceValues // ignore: cast_nullable_to_non_nullable
              as SfRangeValues,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchProductCopyWith<$Res>
    implements $ProductsEventCopyWith<$Res> {
  factory _$$_SearchProductCopyWith(
          _$_SearchProduct value, $Res Function(_$_SearchProduct) then) =
      __$$_SearchProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query, SfRangeValues weightValues, SfRangeValues priceValues});
}

/// @nodoc
class __$$_SearchProductCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$_SearchProduct>
    implements _$$_SearchProductCopyWith<$Res> {
  __$$_SearchProductCopyWithImpl(
      _$_SearchProduct _value, $Res Function(_$_SearchProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_$_SearchProduct(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      weightValues: null == weightValues
          ? _value.weightValues
          : weightValues // ignore: cast_nullable_to_non_nullable
              as SfRangeValues,
      priceValues: null == priceValues
          ? _value.priceValues
          : priceValues // ignore: cast_nullable_to_non_nullable
              as SfRangeValues,
    ));
  }
}

/// @nodoc

class _$_SearchProduct implements _SearchProduct {
  const _$_SearchProduct(
      {required this.query,
      required this.weightValues,
      required this.priceValues});

  @override
  final String query;
  @override
  final SfRangeValues weightValues;
  @override
  final SfRangeValues priceValues;

  @override
  String toString() {
    return 'ProductsEvent.searchProduct(query: $query, weightValues: $weightValues, priceValues: $priceValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchProduct &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.weightValues, weightValues) ||
                other.weightValues == weightValues) &&
            (identical(other.priceValues, priceValues) ||
                other.priceValues == priceValues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, query, weightValues, priceValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchProductCopyWith<_$_SearchProduct> get copyWith =>
      __$$_SearchProductCopyWithImpl<_$_SearchProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String query, SfRangeValues weightValues, SfRangeValues priceValues)
        searchProduct,
    required TResult Function(
            SfRangeValues weightValues, SfRangeValues priceValues)
        changeValues,
  }) {
    return searchProduct(query, weightValues, priceValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SfRangeValues weightValues,
            SfRangeValues priceValues)?
        searchProduct,
    TResult? Function(SfRangeValues weightValues, SfRangeValues priceValues)?
        changeValues,
  }) {
    return searchProduct?.call(query, weightValues, priceValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SfRangeValues weightValues,
            SfRangeValues priceValues)?
        searchProduct,
    TResult Function(SfRangeValues weightValues, SfRangeValues priceValues)?
        changeValues,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(query, weightValues, priceValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_ChangeValues value) changeValues,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_ChangeValues value)? changeValues,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_ChangeValues value)? changeValues,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class _SearchProduct implements ProductsEvent {
  const factory _SearchProduct(
      {required final String query,
      required final SfRangeValues weightValues,
      required final SfRangeValues priceValues}) = _$_SearchProduct;

  String get query;
  @override
  SfRangeValues get weightValues;
  @override
  SfRangeValues get priceValues;
  @override
  @JsonKey(ignore: true)
  _$$_SearchProductCopyWith<_$_SearchProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeValuesCopyWith<$Res>
    implements $ProductsEventCopyWith<$Res> {
  factory _$$_ChangeValuesCopyWith(
          _$_ChangeValues value, $Res Function(_$_ChangeValues) then) =
      __$$_ChangeValuesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SfRangeValues weightValues, SfRangeValues priceValues});
}

/// @nodoc
class __$$_ChangeValuesCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$_ChangeValues>
    implements _$$_ChangeValuesCopyWith<$Res> {
  __$$_ChangeValuesCopyWithImpl(
      _$_ChangeValues _value, $Res Function(_$_ChangeValues) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_$_ChangeValues(
      weightValues: null == weightValues
          ? _value.weightValues
          : weightValues // ignore: cast_nullable_to_non_nullable
              as SfRangeValues,
      priceValues: null == priceValues
          ? _value.priceValues
          : priceValues // ignore: cast_nullable_to_non_nullable
              as SfRangeValues,
    ));
  }
}

/// @nodoc

class _$_ChangeValues implements _ChangeValues {
  const _$_ChangeValues(
      {required this.weightValues, required this.priceValues});

  @override
  final SfRangeValues weightValues;
  @override
  final SfRangeValues priceValues;

  @override
  String toString() {
    return 'ProductsEvent.changeValues(weightValues: $weightValues, priceValues: $priceValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeValues &&
            (identical(other.weightValues, weightValues) ||
                other.weightValues == weightValues) &&
            (identical(other.priceValues, priceValues) ||
                other.priceValues == priceValues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weightValues, priceValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeValuesCopyWith<_$_ChangeValues> get copyWith =>
      __$$_ChangeValuesCopyWithImpl<_$_ChangeValues>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String query, SfRangeValues weightValues, SfRangeValues priceValues)
        searchProduct,
    required TResult Function(
            SfRangeValues weightValues, SfRangeValues priceValues)
        changeValues,
  }) {
    return changeValues(weightValues, priceValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SfRangeValues weightValues,
            SfRangeValues priceValues)?
        searchProduct,
    TResult? Function(SfRangeValues weightValues, SfRangeValues priceValues)?
        changeValues,
  }) {
    return changeValues?.call(weightValues, priceValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SfRangeValues weightValues,
            SfRangeValues priceValues)?
        searchProduct,
    TResult Function(SfRangeValues weightValues, SfRangeValues priceValues)?
        changeValues,
    required TResult orElse(),
  }) {
    if (changeValues != null) {
      return changeValues(weightValues, priceValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_ChangeValues value) changeValues,
  }) {
    return changeValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_ChangeValues value)? changeValues,
  }) {
    return changeValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_ChangeValues value)? changeValues,
    required TResult orElse(),
  }) {
    if (changeValues != null) {
      return changeValues(this);
    }
    return orElse();
  }
}

abstract class _ChangeValues implements ProductsEvent {
  const factory _ChangeValues(
      {required final SfRangeValues weightValues,
      required final SfRangeValues priceValues}) = _$_ChangeValues;

  @override
  SfRangeValues get weightValues;
  @override
  SfRangeValues get priceValues;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeValuesCopyWith<_$_ChangeValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  ProductsData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductsData data) initial,
    required TResult Function(ProductsData data, String error) failure,
    required TResult Function(List<Product> results, ProductsData data)
        searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductsData data)? initial,
    TResult? Function(ProductsData data, String error)? failure,
    TResult? Function(List<Product> results, ProductsData data)? searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductsData data)? initial,
    TResult Function(ProductsData data, String error)? failure,
    TResult Function(List<Product> results, ProductsData data)? searchSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SearchSuccess value) searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_SearchSuccess value)? searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_SearchSuccess value)? searchSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call({ProductsData data});

  $ProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsDataCopyWith<$Res> get data {
    return $ProductsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductsData data});

  @override
  $ProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductsData,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

  @override
  final ProductsData data;

  @override
  String toString() {
    return 'ProductsState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductsData data) initial,
    required TResult Function(ProductsData data, String error) failure,
    required TResult Function(List<Product> results, ProductsData data)
        searchSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductsData data)? initial,
    TResult? Function(ProductsData data, String error)? failure,
    TResult? Function(List<Product> results, ProductsData data)? searchSuccess,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductsData data)? initial,
    TResult Function(ProductsData data, String error)? failure,
    TResult Function(List<Product> results, ProductsData data)? searchSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SearchSuccess value) searchSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_SearchSuccess value)? searchSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_SearchSuccess value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductsState {
  const factory _Initial({required final ProductsData data}) = _$_Initial;

  @override
  ProductsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductsData data, String error});

  @override
  $ProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_$_Failure(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductsData,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.data, required this.error});

  @override
  final ProductsData data;
  @override
  final String error;

  @override
  String toString() {
    return 'ProductsState.failure(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductsData data) initial,
    required TResult Function(ProductsData data, String error) failure,
    required TResult Function(List<Product> results, ProductsData data)
        searchSuccess,
  }) {
    return failure(data, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductsData data)? initial,
    TResult? Function(ProductsData data, String error)? failure,
    TResult? Function(List<Product> results, ProductsData data)? searchSuccess,
  }) {
    return failure?.call(data, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductsData data)? initial,
    TResult Function(ProductsData data, String error)? failure,
    TResult Function(List<Product> results, ProductsData data)? searchSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SearchSuccess value) searchSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_SearchSuccess value)? searchSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_SearchSuccess value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ProductsState {
  const factory _Failure(
      {required final ProductsData data,
      required final String error}) = _$_Failure;

  @override
  ProductsData get data;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchSuccessCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$_SearchSuccessCopyWith(
          _$_SearchSuccess value, $Res Function(_$_SearchSuccess) then) =
      __$$_SearchSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> results, ProductsData data});

  @override
  $ProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SearchSuccessCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_SearchSuccess>
    implements _$$_SearchSuccessCopyWith<$Res> {
  __$$_SearchSuccessCopyWithImpl(
      _$_SearchSuccess _value, $Res Function(_$_SearchSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? data = null,
  }) {
    return _then(_$_SearchSuccess(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductsData,
    ));
  }
}

/// @nodoc

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(
      {required final List<Product> results, required this.data})
      : _results = results;

  final List<Product> _results;
  @override
  List<Product> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final ProductsData data;

  @override
  String toString() {
    return 'ProductsState.searchSuccess(results: $results, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSuccess &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchSuccessCopyWith<_$_SearchSuccess> get copyWith =>
      __$$_SearchSuccessCopyWithImpl<_$_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductsData data) initial,
    required TResult Function(ProductsData data, String error) failure,
    required TResult Function(List<Product> results, ProductsData data)
        searchSuccess,
  }) {
    return searchSuccess(results, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductsData data)? initial,
    TResult? Function(ProductsData data, String error)? failure,
    TResult? Function(List<Product> results, ProductsData data)? searchSuccess,
  }) {
    return searchSuccess?.call(results, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductsData data)? initial,
    TResult Function(ProductsData data, String error)? failure,
    TResult Function(List<Product> results, ProductsData data)? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(results, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SearchSuccess value) searchSuccess,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_SearchSuccess value)? searchSuccess,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_SearchSuccess value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements ProductsState {
  const factory _SearchSuccess(
      {required final List<Product> results,
      required final ProductsData data}) = _$_SearchSuccess;

  List<Product> get results;
  @override
  ProductsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchSuccessCopyWith<_$_SearchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
