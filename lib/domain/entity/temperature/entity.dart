import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
class TemperatureEntity with _$TemperatureEntity {
  const factory TemperatureEntity({required final int temperature}) =
      _TemperatureState;
}
