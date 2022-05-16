import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFlexiableAppBar extends StatelessWidget {
  final double appBarHeight = 66.0;

  const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("AKT Token",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0)),
              const Text(
                  "Purchase our exclusive token with 25% bonus & get your life Elite membreship now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 12.0)),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    label: Text('Learn More'),
                    icon: Icon(Icons.arrow_left),
                    onPressed: () async {
                      const url = 'https://www.akt.io/';
                      if (await canLaunch(url)) launch(url);
                    },
                  ))
            ],
          ),
        ],
      )),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/image.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
