// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TemperatureEntity {
  int get temperature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemperatureEntityCopyWith<TemperatureEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureEntityCopyWith<$Res> {
  factory $TemperatureEntityCopyWith(
          TemperatureEntity value, $Res Function(TemperatureEntity) then) =
      _$TemperatureEntityCopyWithImpl<$Res, TemperatureEntity>;
  @useResult
  $Res call({int temperature});
}

/// @nodoc
class _$TemperatureEntityCopyWithImpl<$Res, $Val extends TemperatureEntity>
    implements $TemperatureEntityCopyWith<$Res> {
  _$TemperatureEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TemperatureStateCopyWith<$Res>
    implements $TemperatureEntityCopyWith<$Res> {
  factory _$$_TemperatureStateCopyWith(
          _$_TemperatureState value, $Res Function(_$_TemperatureState) then) =
      __$$_TemperatureStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int temperature});
}

/// @nodoc
class __$$_TemperatureStateCopyWithImpl<$Res>
    extends _$TemperatureEntityCopyWithImpl<$Res, _$_TemperatureState>
    implements _$$_TemperatureStateCopyWith<$Res> {
  __$$_TemperatureStateCopyWithImpl(
      _$_TemperatureState _value, $Res Function(_$_TemperatureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
  }) {
    return _then(_$_TemperatureState(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TemperatureState implements _TemperatureState {
  const _$_TemperatureState({required this.temperature});

  @override
  final int temperature;

  @override
  String toString() {
    return 'TemperatureEntity(temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TemperatureState &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemperatureStateCopyWith<_$_TemperatureState> get copyWith =>
      __$$_TemperatureStateCopyWithImpl<_$_TemperatureState>(this, _$identity);
}

abstract class _TemperatureState implements TemperatureEntity {
  const factory _TemperatureState({required final int temperature}) =
      _$_TemperatureState;

  @override
  int get temperature;
  @override
  @JsonKey(ignore: true)
  _$$_TemperatureStateCopyWith<_$_TemperatureState> get copyWith =>
      throw _privateConstructorUsedError;
}
