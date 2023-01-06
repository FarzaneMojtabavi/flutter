import 'package:flutter/material.dart';
import 'package:untitled/mobile_size.dart';
import 'package:untitled/responsive_data.dart';
import 'package:untitled/tablet_size.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
      ResponsiveData(mobileSize: MobileSize(),tabletSize: TabletSize(),)
    );
  }
}
