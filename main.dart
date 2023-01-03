import 'package:flutter/material.dart';
import 'package:untitled/secondpage.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onDoubleTap: () {
              print('click');
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const secondpage()));
                  },
                  child: const Text('click')),
            ),
          ),
        ],
      ),
    );
  }
}
