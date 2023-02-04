import 'package:flutter/widgets.dart';

class DegreesCelsius extends StatelessWidget {
  const DegreesCelsius({
    super.key,
    required final String temperature,
  }) : _temperature = temperature;

  final String _temperature;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '$_temperature${String.fromCharCode(8451)}',
        style: const TextStyle(fontSize: 32),
      ),
    );
  }
}
