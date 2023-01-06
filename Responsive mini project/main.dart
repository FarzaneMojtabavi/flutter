import 'package:flutter/material.dart';
import 'package:untitled/responsive_data.dart';
import 'package:untitled/tablet_size.dart';
import 'mobile_size.dart';
void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ResponsiveData(mobileSize: MobileSize(),tabletSize: TabletSize()),
  ));
}
