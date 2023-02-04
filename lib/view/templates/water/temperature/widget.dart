import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/domain/entity/temperature/entity.dart';
import 'package:material/view_model/temperature/notifier.dart';
import 'package:material/view_model/water/notifier.dart';

class Temperature extends ConsumerStatefulWidget {
  const Temperature({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends ConsumerState<Temperature> {
  // 初期値の温度
  double _temperatureValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Slider(
        divisions: 22,
        max: 120.0, // 最大温度
        min: -100.0, // 最低温度
        value: _temperatureValue,
        onChanged: ((final double value) {
          setState(
            () {
              // 温度の更新
              _temperatureValue = value;
              ref
                  .watch(waterNotifierProvider.notifier)
                  .updateTemperature(temperature: value);
              // 表示用温度の更新
              ref.watch(temperatureStateProvider.notifier).state =
                  TemperatureEntity(temperature: value.ceil());
            },
          );
        }),
      ),
    );
  }
}
