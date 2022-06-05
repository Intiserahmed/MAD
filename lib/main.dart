import 'package:flutter/material.dart';

import 'body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  TabBar get _tabBar => TabBar(
        tabs: [
          Tab(
            text: "All",
          ),
        ],
      );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "My Home",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              centerTitle: false,
              bottom: PreferredSize(
                preferredSize: _tabBar.preferredSize,
                child: ColoredBox(
                  color: Colors.black,
                  child: _tabBar,
                ),
              ),
            ),
            body: SensorScreenBody()),
      ),
    );
  }
}
