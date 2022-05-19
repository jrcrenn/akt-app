import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle();

  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.only(left: 5),
      child: Text(
        'Cryptos',
        style: TextStyle(
            color: Colors.grey,
            fontFamily: 'Poppins',
            fontSize: 10.0,
            fontWeight: FontWeight.bold),
      ),
    ));
  }
}
