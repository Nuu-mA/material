import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/domain/entity/water/entity.dart';

class WaterNotifier extends Notifier<WaterEntity> {
  @override
  WaterEntity build() {
    // 初期値として返却するStateを決める
    return const WaterEntity.liquid();
  }

  void updateTemperature({
    required final double temperature,
  }) {
    if (temperature < 0.0) {
      // 0度未満の場合は個体
      state = const WaterEntity.solid();
    } else if (temperature >= 0.0 && temperature <= 100) {
      // 0度以上、100度以下のときは液体
      state = const WaterEntity.liquid();
    } else if (temperature > 100) {
      // 100度以上のときは気体
      state = const WaterEntity.gas();
    }
  }
}

final NotifierProvider<WaterNotifier, WaterEntity> waterNotifierProvider =
    NotifierProvider<WaterNotifier, WaterEntity>(WaterNotifier.new);
