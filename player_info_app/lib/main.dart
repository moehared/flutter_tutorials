import 'package:flutter/material.dart';
import 'package:player_info_app/screens/player_details_screen.dart';

import 'screens/player_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyHomePage.routeName,
      routes: {
        MyHomePage.routeName: (ctx) => MyHomePage(),
        PlayerDetailsScreen.routeName: (ctx) => PlayerDetailsScreen(),
      },
    );
  }
}
