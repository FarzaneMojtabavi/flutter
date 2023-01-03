import 'package:flutter/material.dart';
import 'package:untitled/secondpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  TextEditingController nameControl = TextEditingController();
  TextEditingController ageControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: TextField(
              controller: nameControl,
              cursorColor: Colors.black,
              style:  TextStyle(color: Colors.blue.shade900),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.cyan.shade100,
                hintText: 'name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
            child: TextField(
              controller: ageControl,
              cursorColor: Colors.black,
              style:  TextStyle(color: Colors.blue.shade900),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.cyan.shade100,
                hintText: 'age',
                // border: OutlineInputBorder(
                //     borderSide: BorderSide.none,
                //     borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20)
              ),
                  onPressed: () {
                    String name = nameControl.text;
                    int age = int.parse(ageControl.text);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => secondPage(name, age)));
                  },
                  child: const Text('click')),
            ),
          ),
        ],
      ),
    );
  }
}
