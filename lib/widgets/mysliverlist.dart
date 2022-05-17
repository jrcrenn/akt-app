import 'package:flutter/material.dart';
import '../utils/data.dart';
import 'dart:math' as math;

class MySliverList extends StatelessWidget {
  const MySliverList();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
          height: 139.0,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 25,
              itemBuilder: (BuildContext context, int position) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Card(
                      color:
                          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                              .withOpacity(1.0),
                      child: const SizedBox(
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 42),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              names[math.Random().nextInt(names.length - 1)],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              number[math.Random().nextInt(number.length - 1)] +
                                  "€",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              number[math.Random().nextInt(number.length - 1)] +
                                  "%",
                              style: TextStyle(
                                  color: predefinedColors[math.Random()
                                      .nextInt(predefinedColors.length)],
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ],
                );
              })),
    );
  }
}
