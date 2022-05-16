import 'package:flutter/material.dart';
import 'widgets/myflexiableappbar.dart';
import 'widgets/myappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      theme: ThemeData(
          primaryColor: Colors.purple,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.yellowAccent)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.black,
          title: MyAppBar(),
          pinned: true,
          expandedHeight: 210.0,
          flexibleSpace: FlexibleSpaceBar(
            background: MyFlexiableAppBar(),
          ),
        ),
      ],
    ));
  }
}
