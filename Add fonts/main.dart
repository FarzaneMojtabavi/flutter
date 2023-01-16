import 'package:flutter/material.dart';
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
    return const Scaffold(backgroundColor: Colors.purple,
        body: Center(child: Text('Farzane',
          style: TextStyle(fontFamily: 'fonts/Pacifico.ttf',fontSize: 40,color: Colors.orange),)));
  }
}