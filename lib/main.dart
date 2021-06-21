// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterquizstarv2/splash.dart';
// import 'package:device_preview/device_preview.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: "Quizstar",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: splashscreen(),
    );
  }
}
