import 'package:flutter/material.dart';
import 'package:infigon_task/presentation/core/widgets/background_painter.dart';
import 'package:infigon_task/presentation/tests_page/tests_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue[800],
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          primary: Colors.blue[800],
        )),
      ),
      title: 'Material App',
      home: Scaffold(
        body: CustomPaint(
          painter: BackgroundPainter(),
          child: SafeArea(
            child: TestsPage(),
          ),
        ),
      ),
    );
  }
}
