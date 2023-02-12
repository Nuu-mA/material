import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/gen/assets.gen.dart';
import 'package:material/view/templates/water/degrees_celsius/widget.dart';
import 'package:material/view/templates/water/temperature/widget.dart';
import 'package:material/view_model/temperature/notifier.dart';

class MaterialMain extends ConsumerWidget {
  const MaterialMain({super.key});

  @override
  Widget build(Object context, WidgetRef ref) {
    final String waterImagePath = ref.watch(waterEntityProvider).when(
          solid: () => Assets.images.waterSolid.path, // 個体のImagePath
          liquid: () => Assets.images.waterLiquid.path, // 液体のImagePath
          gas: () => Assets.images.waterGas.path, // 気体のImagePath
        );
    final double temperatureValue = ref.watch(temperatureProvider);
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Center(
            child: Image.asset(waterImagePath),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DegreesCelsius(temperature: '$temperatureValue'),
                const Temperature(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
