import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar();

  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Investments',
      style:
          TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20.0),
    );
  }
}
