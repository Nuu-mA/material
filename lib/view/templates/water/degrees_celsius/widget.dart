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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _temperature,
            style: const TextStyle(fontSize: 32),
          ),
          Text(
            String.fromCharCode(8451),
            style: const TextStyle(fontSize: 32),
          ) // セルシウス度表記
        ],
      ),
    );
  }
}
