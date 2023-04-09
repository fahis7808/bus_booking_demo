import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/pages/splash_screen.dart';
import 'package:ksrtc_booking_demo/utils.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const  SplashScreen(),
    );
  }
}
