import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/domain/entity/water/entity.dart';

final temperatureProvider = StateProvider<double>(
  (ref) => 0.0,
);

final waterEntityProvider = Provider<WaterEntity>(
  (ref) {
    // 温度情報の状態変化をWatchする
    final double temperature = ref.watch(temperatureProvider);
    if (temperature < 0.0) {
      // 0度未満の場合は個体
      return const WaterEntity.solid();
    } else if (temperature >= 0.0 && temperature <= 100) {
      // 0度以上、100度以下のときは液体
      return const WaterEntity.liquid();
    } else if (temperature > 100) {
      // 100度以上のときは気体
      return const WaterEntity.gas();
    }
    return const WaterEntity.liquid();
  },
);
