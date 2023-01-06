import 'package:flutter/material.dart';
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
    final deviceWidth=MediaQuery.of(context).size.width;
    final deviceHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body:
      Center(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Width: $deviceWidth'),
            const SizedBox(width: 15.0,),
            Text('Height: $deviceHeight'),
          ],)
        )
    );
  }
}
