// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Water {
  double get temperature => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WaterCopyWith<Water> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaterCopyWith<$Res> {
  factory $WaterCopyWith(Water value, $Res Function(Water) then) =
      _$WaterCopyWithImpl<$Res, Water>;
  @useResult
  $Res call({double temperature, double volume});
}

/// @nodoc
class _$WaterCopyWithImpl<$Res, $Val extends Water>
    implements $WaterCopyWith<$Res> {
  _$WaterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WaterCopyWith<$Res> implements $WaterCopyWith<$Res> {
  factory _$$_WaterCopyWith(_$_Water value, $Res Function(_$_Water) then) =
      __$$_WaterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temperature, double volume});
}

/// @nodoc
class __$$_WaterCopyWithImpl<$Res> extends _$WaterCopyWithImpl<$Res, _$_Water>
    implements _$$_WaterCopyWith<$Res> {
  __$$_WaterCopyWithImpl(_$_Water _value, $Res Function(_$_Water) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? volume = null,
  }) {
    return _then(_$_Water(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Water implements _Water {
  const _$_Water({required this.temperature, required this.volume});

  @override
  final double temperature;
  @override
  final double volume;

  @override
  String toString() {
    return 'Water(temperature: $temperature, volume: $volume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Water &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temperature, volume);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WaterCopyWith<_$_Water> get copyWith =>
      __$$_WaterCopyWithImpl<_$_Water>(this, _$identity);
}

abstract class _Water implements Water {
  const factory _Water(
      {required final double temperature,
      required final double volume}) = _$_Water;

  @override
  double get temperature;
  @override
  double get volume;
  @override
  @JsonKey(ignore: true)
  _$$_WaterCopyWith<_$_Water> get copyWith =>
      throw _privateConstructorUsedError;
}
