import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../models/data.dart';

class MyList extends StatelessWidget {
  const MyList();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
            height: 125.0,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: coinList.length,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Card(
                        color: Color(
                                (math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                        child: const SizedBox(
                          width: 65,
                          height: 65,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                coinList[index].symbol.toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                coinList[index]
                                        .price
                                        .toDouble()
                                        .toStringAsFixed(2) +
                                    ' \$',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  coinList[index].changePercentage.toDouble() <
                                          0
                                      ? '' +
                                          coinList[index]
                                              .changePercentage
                                              .toDouble()
                                              .toDouble()
                                              .toStringAsFixed(2) +
                                          ' %'
                                      : '+' +
                                          coinList[index]
                                              .changePercentage
                                              .toDouble()
                                              .toDouble()
                                              .toStringAsFixed(2) +
                                          ' %',
                                  style: TextStyle(
                                    color: coinList[index]
                                                .changePercentage
                                                .toDouble() <
                                            0
                                        ? Colors.red
                                        : Colors.green,
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ]),
                      ),
                    ],
                  );
                })));
  }
}
