import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ordo/views/DashboardPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ordo',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: DashboardPage(),
    );
  }
}

