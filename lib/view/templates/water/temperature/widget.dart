import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Temperature extends ConsumerStatefulWidget {
  const Temperature({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends ConsumerState<Temperature> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Slider(
        value: _currentSliderValue,
        onChanged: ((value) {
          setState(
            () {
              _currentSliderValue = value;
            },
          );
        }),
      ),
    );
  }
}
