// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(3)
  int get deliveryTimeInMinutes => throw _privateConstructorUsedError;
  @HiveField(4)
  int get deliveryPrice => throw _privateConstructorUsedError;
  @HiveField(5)
  String get photoUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) = _$ShopCopyWithImpl<$Res, Shop>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) int deliveryTimeInMinutes,
      @HiveField(4) int deliveryPrice,
      @HiveField(5) String photoUrl,
      @HiveField(6) List<Product> products});
}

/// @nodoc
class _$ShopCopyWithImpl<$Res, $Val extends Shop> implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? deliveryTimeInMinutes = null,
    Object? deliveryPrice = null,
    Object? photoUrl = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTimeInMinutes: null == deliveryTimeInMinutes
          ? _value.deliveryTimeInMinutes
          : deliveryTimeInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopImplCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$ShopImplCopyWith(_$ShopImpl value, $Res Function(_$ShopImpl) then) = __$$ShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) int deliveryTimeInMinutes,
      @HiveField(4) int deliveryPrice,
      @HiveField(5) String photoUrl,
      @HiveField(6) List<Product> products});
}

/// @nodoc
class __$$ShopImplCopyWithImpl<$Res> extends _$ShopCopyWithImpl<$Res, _$ShopImpl> implements _$$ShopImplCopyWith<$Res> {
  __$$ShopImplCopyWithImpl(_$ShopImpl _value, $Res Function(_$ShopImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? deliveryTimeInMinutes = null,
    Object? deliveryPrice = null,
    Object? photoUrl = null,
    Object? products = null,
  }) {
    return _then(_$ShopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTimeInMinutes: null == deliveryTimeInMinutes
          ? _value.deliveryTimeInMinutes
          : deliveryTimeInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$ShopImpl implements _Shop {
  _$ShopImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.description,
      @HiveField(3) required this.deliveryTimeInMinutes,
      @HiveField(4) required this.deliveryPrice,
      @HiveField(5) required this.photoUrl,
      @HiveField(6) required final List<Product> products})
      : _products = products;

  factory _$ShopImpl.fromJson(Map<String, dynamic> json) => _$$ShopImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String description;
  @override
  @HiveField(3)
  final int deliveryTimeInMinutes;
  @override
  @HiveField(4)
  final int deliveryPrice;
  @override
  @HiveField(5)
  final String photoUrl;
  final List<Product> _products;
  @override
  @HiveField(6)
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Shop(id: $id, name: $name, description: $description, deliveryTimeInMinutes: $deliveryTimeInMinutes, deliveryPrice: $deliveryPrice, photoUrl: $photoUrl, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.deliveryTimeInMinutes, deliveryTimeInMinutes) ||
                other.deliveryTimeInMinutes == deliveryTimeInMinutes) &&
            (identical(other.deliveryPrice, deliveryPrice) || other.deliveryPrice == deliveryPrice) &&
            (identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, deliveryTimeInMinutes, deliveryPrice, photoUrl,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith => __$$ShopImplCopyWithImpl<_$ShopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopImplToJson(
      this,
    );
  }
}

abstract class _Shop implements Shop {
  factory _Shop(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String description,
      @HiveField(3) required final int deliveryTimeInMinutes,
      @HiveField(4) required final int deliveryPrice,
      @HiveField(5) required final String photoUrl,
      @HiveField(6) required final List<Product> products}) = _$ShopImpl;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$ShopImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get description;
  @override
  @HiveField(3)
  int get deliveryTimeInMinutes;
  @override
  @HiveField(4)
  int get deliveryPrice;
  @override
  @HiveField(5)
  String get photoUrl;
  @override
  @HiveField(6)
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith => throw _privateConstructorUsedError;
}
