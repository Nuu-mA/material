import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
class WaterEntity with _$WaterEntity {
  const factory WaterEntity.solid() = _WaterSolid;
  const factory WaterEntity.liquid() = _WaterLiquid;
  const factory WaterEntity.gas() = _WaterGas;
}
