import 'package:bar_app/location/maps.dart';
import 'package:bar_app/pages/payments/payments.dart';
import 'package:bar_app/pages/profile.dart';
import 'package:bar_app/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const WelcomePage(),
      // home: const Profile(),
      // home: const Payments(),
      home: Maps(),
    );
  }
}
