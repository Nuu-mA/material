import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/gen/assets.gen.dart';
import 'package:material/view/templates/water/degrees_celsius/widget.dart';
import 'package:material/view/templates/water/temperature/widget.dart';
import 'package:material/view_model/water/notifier.dart';

class MaterialMain extends ConsumerWidget {
  const MaterialMain({super.key});

  @override
  Widget build(Object context, WidgetRef ref) {
    final String waterImagePath = ref.watch(waterNotifierProvider).when(
          solid: () => Assets.images.waterSolid.path, // 個体のImagePath
          liquid: () => Assets.images.waterLiquid.path, // 液体のImagePath
          gas: () => Assets.images.waterGas.path, // 気体のImagePath
        );
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
            height: 32,
            child: Row(
              children: <Widget>[
                Temperature(),
                // DegreesCelsius(temperature: temperature)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
