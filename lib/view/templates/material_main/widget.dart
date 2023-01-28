import 'package:flutter/material.dart';
import 'package:material/view/templates/water/temperature/widget.dart';

class MaterialMain extends StatelessWidget {
  const MaterialMain({super.key});

  @override
  Widget build(Object context) {
    return Column(
      children: const <Widget>[
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              '水',
              style: TextStyle(
                fontSize: 64,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Expanded(
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
