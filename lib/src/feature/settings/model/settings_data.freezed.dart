// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsData {
  AppTheme get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsDataCopyWith<SettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDataCopyWith<$Res> {
  factory $SettingsDataCopyWith(
          SettingsData value, $Res Function(SettingsData) then) =
      _$SettingsDataCopyWithImpl<$Res, SettingsData>;
  @useResult
  $Res call({AppTheme theme});
}

/// @nodoc
class _$SettingsDataCopyWithImpl<$Res, $Val extends SettingsData>
    implements $SettingsDataCopyWith<$Res> {
  _$SettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsDataCopyWith<$Res>
    implements $SettingsDataCopyWith<$Res> {
  factory _$$_SettingsDataCopyWith(
          _$_SettingsData value, $Res Function(_$_SettingsData) then) =
      __$$_SettingsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppTheme theme});
}

/// @nodoc
class __$$_SettingsDataCopyWithImpl<$Res>
    extends _$SettingsDataCopyWithImpl<$Res, _$_SettingsData>
    implements _$$_SettingsDataCopyWith<$Res> {
  __$$_SettingsDataCopyWithImpl(
      _$_SettingsData _value, $Res Function(_$_SettingsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$_SettingsData(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc

class _$_SettingsData implements _SettingsData {
  _$_SettingsData({required this.theme});

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'SettingsData(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsData &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsDataCopyWith<_$_SettingsData> get copyWith =>
      __$$_SettingsDataCopyWithImpl<_$_SettingsData>(this, _$identity);
}

abstract class _SettingsData implements SettingsData {
  factory _SettingsData({required final AppTheme theme}) = _$_SettingsData;

  @override
  AppTheme get theme;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsDataCopyWith<_$_SettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}
