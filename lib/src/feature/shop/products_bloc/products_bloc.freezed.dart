// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEvent {
  SfRangeValues get weightValues => throw _privateConstructorUsedError;
  SfRangeValues get priceValues => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SfRangeValues weightValues, SfRangeValues priceValues) searchProduct,
    required TResult Function(SfRangeValues weightValues, SfRangeValues priceValues) changeValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SfRangeValues weightValues, SfRangeValues priceValues)? searchProduct,
    TResult? Function(SfRangeValues weightValues, SfRangeValues priceValues)? changeValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SfRangeValues weightValues, SfRangeValues priceValues)? searchProduct,
    TResult Function(SfRangeValues weightValues, SfRangeValues priceValues)? changeValues,
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
  $ProductsEventCopyWith<ProductsEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
  @useResult
  $Res call({SfRangeValues weightValues, SfRangeValues priceValues});
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent> implements $ProductsEventCopyWith<$Res> {
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
abstract class _$$SearchProductImplCopyWith<$Res> implements $ProductsEventCopyWith<$Res> {
  factory _$$SearchProductImplCopyWith(_$SearchProductImpl value, $Res Function(_$SearchProductImpl) then) =
      __$$SearchProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, SfRangeValues weightValues, SfRangeValues priceValues});
}

/// @nodoc
class __$$SearchProductImplCopyWithImpl<$Res> extends _$ProductsEventCopyWithImpl<$Res, _$SearchProductImpl>
    implements _$$SearchProductImplCopyWith<$Res> {
  __$$SearchProductImplCopyWithImpl(_$SearchProductImpl _value, $Res Function(_$SearchProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_$SearchProductImpl(
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

class _$SearchProductImpl implements _SearchProduct {
  const _$SearchProductImpl({required this.query, required this.weightValues, required this.priceValues});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.weightValues, weightValues) || other.weightValues == weightValues) &&
            (identical(other.priceValues, priceValues) || other.priceValues == priceValues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, weightValues, priceValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      __$$SearchProductImplCopyWithImpl<_$SearchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SfRangeValues weightValues, SfRangeValues priceValues) searchProduct,
    required TResult Function(SfRangeValues weightValues, SfRangeValues priceValues) changeValues,
  }) {
    return searchProduct(query, weightValues, priceValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SfRangeValues weightValues, SfRangeValues priceValues)? searchProduct,
    TResult? Function(SfRangeValues weightValues, SfRangeValues priceValues)? changeValues,
  }) {
    return searchProduct?.call(query, weightValues, priceValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SfRangeValues weightValues, SfRangeValues priceValues)? searchProduct,
    TResult Function(SfRangeValues weightValues, SfRangeValues priceValues)? changeValues,
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
      required final SfRangeValues priceValues}) = _$SearchProductImpl;

  String get query;
  @override
  SfRangeValues get weightValues;
  @override
  SfRangeValues get priceValues;
  @override
  @JsonKey(ignore: true)
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeValuesImplCopyWith<$Res> implements $ProductsEventCopyWith<$Res> {
  factory _$$ChangeValuesImplCopyWith(_$ChangeValuesImpl value, $Res Function(_$ChangeValuesImpl) then) =
      __$$ChangeValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SfRangeValues weightValues, SfRangeValues priceValues});
}

/// @nodoc
class __$$ChangeValuesImplCopyWithImpl<$Res> extends _$ProductsEventCopyWithImpl<$Res, _$ChangeValuesImpl>
    implements _$$ChangeValuesImplCopyWith<$Res> {
  __$$ChangeValuesImplCopyWithImpl(_$ChangeValuesImpl _value, $Res Function(_$ChangeValuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_$ChangeValuesImpl(
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

class _$ChangeValuesImpl implements _ChangeValues {
  const _$ChangeValuesImpl({required this.weightValues, required this.priceValues});

  @override
  final SfRangeValues weightValues;
  @override
  final SfRangeValues priceValues;

  @override
  String toString() {
    return 'ProductsEvent.changeValues(weightValues: $weightValues, priceValues: $priceValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeValuesImpl &&
            (identical(other.weightValues, weightValues) || other.weightValues == weightValues) &&
            (identical(other.priceValues, priceValues) || other.priceValues == priceValues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weightValues, priceValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeValuesImplCopyWith<_$ChangeValuesImpl> get copyWith =>
      __$$ChangeValuesImplCopyWithImpl<_$ChangeValuesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SfRangeValues weightValues, SfRangeValues priceValues) searchProduct,
    required TResult Function(SfRangeValues weightValues, SfRangeValues priceValues) changeValues,
  }) {
    return changeValues(weightValues, priceValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SfRangeValues weightValues, SfRangeValues priceValues)? searchProduct,
    TResult? Function(SfRangeValues weightValues, SfRangeValues priceValues)? changeValues,
  }) {
    return changeValues?.call(weightValues, priceValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SfRangeValues weightValues, SfRangeValues priceValues)? searchProduct,
    TResult Function(SfRangeValues weightValues, SfRangeValues priceValues)? changeValues,
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
  const factory _ChangeValues({required final SfRangeValues weightValues, required final SfRangeValues priceValues}) =
      _$ChangeValuesImpl;

  @override
  SfRangeValues get weightValues;
  @override
  SfRangeValues get priceValues;
  @override
  @JsonKey(ignore: true)
  _$$ChangeValuesImplCopyWith<_$ChangeValuesImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  ProductsData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductsData data) initial,
    required TResult Function(ProductsData data, String error) failure,
    required TResult Function(List<Product> results, ProductsData data) searchSuccess,
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
  $ProductsStateCopyWith<ProductsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call({ProductsData data});

  $ProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState> implements $ProductsStateCopyWith<$Res> {
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
abstract class _$$InitialImplCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductsData data});

  @override
  $ProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$InitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductsData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.data});

  @override
  final ProductsData data;

  @override
  String toString() {
    return 'ProductsState.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductsData data) initial,
    required TResult Function(ProductsData data, String error) failure,
    required TResult Function(List<Product> results, ProductsData data) searchSuccess,
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
  const factory _Initial({required final ProductsData data}) = _$InitialImpl;

  @override
  ProductsData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(_$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductsData data, String error});

  @override
  $ProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res> extends _$ProductsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(_$FailureImpl _value, $Res Function(_$FailureImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
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

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.data, required this.error});

  @override
  final ProductsData data;
  @override
  final String error;

  @override
  String toString() {
    return 'ProductsState.failure(data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith => __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductsData data) initial,
    required TResult Function(ProductsData data, String error) failure,
    required TResult Function(List<Product> results, ProductsData data) searchSuccess,
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
  const factory _Failure({required final ProductsData data, required final String error}) = _$FailureImpl;

  @override
  ProductsData get data;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$$SearchSuccessImplCopyWith(_$SearchSuccessImpl value, $Res Function(_$SearchSuccessImpl) then) =
      __$$SearchSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> results, ProductsData data});

  @override
  $ProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<$Res> extends _$ProductsStateCopyWithImpl<$Res, _$SearchSuccessImpl>
    implements _$$SearchSuccessImplCopyWith<$Res> {
  __$$SearchSuccessImplCopyWithImpl(_$SearchSuccessImpl _value, $Res Function(_$SearchSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? data = null,
  }) {
    return _then(_$SearchSuccessImpl(
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

class _$SearchSuccessImpl implements _SearchSuccess {
  const _$SearchSuccessImpl({required final List<Product> results, required this.data}) : _results = results;

  final List<Product> _results;
  @override
  List<Product> get results {
    if (_results is EqualUnmodifiableListView) return _results;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_results), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<_$SearchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductsData data) initial,
    required TResult Function(ProductsData data, String error) failure,
    required TResult Function(List<Product> results, ProductsData data) searchSuccess,
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
  const factory _SearchSuccess({required final List<Product> results, required final ProductsData data}) =
      _$SearchSuccessImpl;

  List<Product> get results;
  @override
  ProductsData get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith => throw _privateConstructorUsedError;
}
