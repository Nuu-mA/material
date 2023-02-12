import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/view_model/temperature/notifier.dart';

class Temperature extends ConsumerWidget {
  const Temperature({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Slider(
        divisions: 22,
        max: 120.0, // 最大温度
        min: -100.0, // 最低温度
        value: ref.watch(temperatureProvider),
        onChanged: (value) {
          // 温度の更新
          ref.watch(temperatureProvider.notifier).update(
                (state) => value,
              );
        },
      ),
    );
  }
}
