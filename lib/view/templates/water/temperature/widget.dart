import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        label: '${_temperatureValue.ceil()}',
        divisions: 22,
        max: 120.0, // 最大温度
        min: -100.0, // 最低温度
        value: _temperatureValue,
        onChanged: ((value) {
          setState(
            () {
              // 温度の更新
              _temperatureValue = value;
              ref
                  .watch(waterNotifierProvider.notifier)
                  .updateTemperature(temperature: value);
            },
          );
        }),
      ),
    );
  }
}
