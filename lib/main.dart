import 'package:flutter/material.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/views/DashboardPage.dart';
import 'package:ordo/views/Test1/Test1Page.dart';
import 'package:ordo/views/Test2/Test2Page.dart';
import 'package:ordo/views/Test3/Test3Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
