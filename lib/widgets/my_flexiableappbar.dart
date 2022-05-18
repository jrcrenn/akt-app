import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../tools/config.dart';

class MyFlexiableAppBar extends StatelessWidget {
  const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("AKT Token",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0)),
              Text(
                  "Purchase our exclusive token with 25% bonus & get your life Elite membreship now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 12.0)),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    label: const Text('Learn More'),
                    icon: const Icon(Icons.arrow_left),
                    onPressed: () async {
                      if (await canLaunch(AppConfigurations.aktWeb))
                        launch(AppConfigurations.aktWeb);
                    },
                  ))
            ],
          ),
        ],
      )),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/image2.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
