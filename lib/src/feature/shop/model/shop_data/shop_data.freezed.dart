// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopsData {
  List<Shop> get shops => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  SfRangeValues get weightValues => throw _privateConstructorUsedError;
  SfRangeValues get priceValues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopsDataCopyWith<ShopsData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsDataCopyWith<$Res> {
  factory $ShopsDataCopyWith(ShopsData value, $Res Function(ShopsData) then) = _$ShopsDataCopyWithImpl<$Res, ShopsData>;
  @useResult
  $Res call({List<Shop> shops, String query, SfRangeValues weightValues, SfRangeValues priceValues});
}

/// @nodoc
class _$ShopsDataCopyWithImpl<$Res, $Val extends ShopsData> implements $ShopsDataCopyWith<$Res> {
  _$ShopsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
    Object? query = null,
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_value.copyWith(
      shops: null == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
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
}

/// @nodoc
abstract class _$$ShopsDataImplCopyWith<$Res> implements $ShopsDataCopyWith<$Res> {
  factory _$$ShopsDataImplCopyWith(_$ShopsDataImpl value, $Res Function(_$ShopsDataImpl) then) =
      __$$ShopsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Shop> shops, String query, SfRangeValues weightValues, SfRangeValues priceValues});
}

/// @nodoc
class __$$ShopsDataImplCopyWithImpl<$Res> extends _$ShopsDataCopyWithImpl<$Res, _$ShopsDataImpl>
    implements _$$ShopsDataImplCopyWith<$Res> {
  __$$ShopsDataImplCopyWithImpl(_$ShopsDataImpl _value, $Res Function(_$ShopsDataImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
    Object? query = null,
    Object? weightValues = null,
    Object? priceValues = null,
  }) {
    return _then(_$ShopsDataImpl(
      shops: null == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
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

class _$ShopsDataImpl implements _ShopsData {
  _$ShopsDataImpl(
      {required final List<Shop> shops, required this.query, required this.weightValues, required this.priceValues})
      : _shops = shops;

  final List<Shop> _shops;
  @override
  List<Shop> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  @override
  final String query;
  @override
  final SfRangeValues weightValues;
  @override
  final SfRangeValues priceValues;

  @override
  String toString() {
    return 'ShopsData(shops: $shops, query: $query, weightValues: $weightValues, priceValues: $priceValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopsDataImpl &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.weightValues, weightValues) || other.weightValues == weightValues) &&
            (identical(other.priceValues, priceValues) || other.priceValues == priceValues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shops), query, weightValues, priceValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopsDataImplCopyWith<_$ShopsDataImpl> get copyWith =>
      __$$ShopsDataImplCopyWithImpl<_$ShopsDataImpl>(this, _$identity);
}

abstract class _ShopsData implements ShopsData {
  factory _ShopsData(
      {required final List<Shop> shops,
      required final String query,
      required final SfRangeValues weightValues,
      required final SfRangeValues priceValues}) = _$ShopsDataImpl;

  @override
  List<Shop> get shops;
  @override
  String get query;
  @override
  SfRangeValues get weightValues;
  @override
  SfRangeValues get priceValues;
  @override
  @JsonKey(ignore: true)
  _$$ShopsDataImplCopyWith<_$ShopsDataImpl> get copyWith => throw _privateConstructorUsedError;
}
