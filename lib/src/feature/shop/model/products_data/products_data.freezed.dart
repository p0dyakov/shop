// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsData {
  Shop get shop => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  SfRangeValues get weightValues => throw _privateConstructorUsedError;
  SfRangeValues get priceValues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsDataCopyWith<ProductsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDataCopyWith<$Res> {
  factory $ProductsDataCopyWith(
          ProductsData value, $Res Function(ProductsData) then) =
      _$ProductsDataCopyWithImpl<$Res, ProductsData>;
  @useResult
  $Res call(
      {Shop shop,
      String query,
      SfRangeValues weightValues,
      SfRangeValues priceValues});

  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class _$ProductsDataCopyWithImpl<$Res, $Val extends ProductsData>
    implements $ProductsDataCopyWith<$Res> {
  _$ProductsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = null,
    Object? query = null,
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_value.copyWith(
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopCopyWith<$Res> get shop {
    return $ShopCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsDataImplCopyWith<$Res>
    implements $ProductsDataCopyWith<$Res> {
  factory _$$ProductsDataImplCopyWith(
          _$ProductsDataImpl value, $Res Function(_$ProductsDataImpl) then) =
      __$$ProductsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Shop shop,
      String query,
      SfRangeValues weightValues,
      SfRangeValues priceValues});

  @override
  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$$ProductsDataImplCopyWithImpl<$Res>
    extends _$ProductsDataCopyWithImpl<$Res, _$ProductsDataImpl>
    implements _$$ProductsDataImplCopyWith<$Res> {
  __$$ProductsDataImplCopyWithImpl(
      _$ProductsDataImpl _value, $Res Function(_$ProductsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = null,
    Object? query = null,
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_$ProductsDataImpl(
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
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

class _$ProductsDataImpl implements _ProductsData {
  _$ProductsDataImpl(
      {required this.shop,
      required this.query,
      required this.weightValues,
      required this.priceValues});

  @override
  final Shop shop;
  @override
  final String query;
  @override
  final SfRangeValues weightValues;
  @override
  final SfRangeValues priceValues;

  @override
  String toString() {
    return 'ProductsData(shop: $shop, query: $query, weightValues: $weightValues, priceValues: $priceValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDataImpl &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.weightValues, weightValues) ||
                other.weightValues == weightValues) &&
            (identical(other.priceValues, priceValues) ||
                other.priceValues == priceValues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, shop, query, weightValues, priceValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDataImplCopyWith<_$ProductsDataImpl> get copyWith =>
      __$$ProductsDataImplCopyWithImpl<_$ProductsDataImpl>(this, _$identity);
}

abstract class _ProductsData implements ProductsData {
  factory _ProductsData(
      {required final Shop shop,
      required final String query,
      required final SfRangeValues weightValues,
      required final SfRangeValues priceValues}) = _$ProductsDataImpl;

  @override
  Shop get shop;
  @override
  String get query;
  @override
  SfRangeValues get weightValues;
  @override
  SfRangeValues get priceValues;
  @override
  @JsonKey(ignore: true)
  _$$ProductsDataImplCopyWith<_$ProductsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
