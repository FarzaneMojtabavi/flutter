import 'package:flutter/material.dart';
import 'package:untitled/res.dart';
import 'tablet.dart';
import 'mobile.dart';
void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: page()
  ));
}
class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.cyan,
      body: Center(child: Image.asset('images/flutterimage.png',width: 200,height: 200,)),);
  }
}
