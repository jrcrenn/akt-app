import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Investments',
      style:
          TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20.0),
    );
  }
}
