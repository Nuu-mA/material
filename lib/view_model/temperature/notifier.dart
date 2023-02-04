import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/domain/entity/temperature/entity.dart';

final StateProvider<TemperatureEntity> temperatureStateProvider =
    StateProvider<TemperatureEntity>(
  ((final StateProviderRef<TemperatureEntity> ref) =>
      const TemperatureEntity(temperature: 0)),
);
