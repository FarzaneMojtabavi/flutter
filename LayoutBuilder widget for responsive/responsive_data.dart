import 'package:flutter/material.dart';

class ResponsiveData extends StatelessWidget {
  final Widget mobileSize;
  final Widget tabletSize;

  const ResponsiveData(
      {super.key, required this.mobileSize, required this.tabletSize});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return mobileSize;
      } else {
        return tabletSize;
      }
    });
  }
}
