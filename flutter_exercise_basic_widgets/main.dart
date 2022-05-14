import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
          title: const Text('apps'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green.shade900, width: 2),
                            color: Colors.green),
                        child: const Center(
                          child: Text(
                            'Row',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.yellow,
                            ),
                          ),
                        ))),
                Center(
                    child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green.shade900, width: 2),
                            color: Colors.green),
                        child: const Center(
                          child: Text(
                            'Row',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.yellow,
                            ),
                          ),
                        ))),
                Center(
                    child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green.shade900, width: 2),
                            color: Colors.green),
                        child: const Center(
                          child: Text(
                            'Row',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.yellow,
                            ),
                          ),
                        ))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                    child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blue.shade900, width: 2),
                            color: Colors.blue),
                        child: const Center(
                          child: Text(
                            'Column',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.lime,
                            ),
                          ),
                        ))),
                Center(
                    child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blue.shade900, width: 2),
                            color: Colors.blue),
                        child: const Center(
                          child: Text(
                            'Column',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.lime,
                            ),
                          ),
                        ))),
                Center(
                    child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blue.shade900, width: 2),
                            color: Colors.blue),
                        child: const Center(
                          child: Text(
                            'Column',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.lime,
                            ),
                          ),
                        ))),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 10,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 10,
                color: Colors.deepOrangeAccent,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 10,
                color: Colors.cyan,
              ),
            ),
            const Center(
              child: Text('Expande'),
            ),
            SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('button SizedBox'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('button'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // SizedBox.expand(
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     child: const Text('button'),
            //   ),
            // ),
          ],
        ));
  }
}
