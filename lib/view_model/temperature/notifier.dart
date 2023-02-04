import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/domain/entity/temperature/entity.dart';

final Provider<TemperatureEntity> temperatureProvider =
    Provider<TemperatureEntity>(
  ((final ProviderRef<TemperatureEntity> ref) =>
      const TemperatureEntity(temperature: 0.0)),
);
