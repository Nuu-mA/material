import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';

class DegreesCelsius extends StatelessWidget {
  const DegreesCelsius({
    super.key,
    required final String temperature,
  }) : _temperature = temperature;

  final String _temperature;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(_temperature),
        Html(data: '&#8451;'),
      ],
    );
  }
}
