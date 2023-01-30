import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material/view/templates/water/temperature/widget.dart';
import 'package:material/view_model/water/notifier.dart';

class MaterialMain extends ConsumerWidget {
  const MaterialMain({super.key});

  @override
  Widget build(Object context, WidgetRef ref) {
    final String waterViewSt = ref.watch(waterNotifierProvider).when(
          solid: () => '氷',
          liquid: () => '水',
          gas: () => '水蒸気',
        );
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              waterViewSt,
              style: const TextStyle(
                fontSize: 64,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(
            height: 32,
            child: Temperature(),
          ),
        ),
      ],
    );
  }
}
