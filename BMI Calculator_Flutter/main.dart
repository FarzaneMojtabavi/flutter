import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _heightController = TextEditingController();

  TextEditingController _weightController = TextEditingController();

  String _TextResult = "";

  double _BmiResult = 0, height = 0, weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.yellow, fontSize: 16),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 140,
                child: TextField(
                  controller: _heightController,
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 35,
                  ),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Height',
                      hintStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                height: 70,
                width: 140,
                child: TextField(
                  controller: _weightController,
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 35,
                  ),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Weight',
                      hintStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                height = double.parse(_heightController.text);
                weight = double.parse(_weightController.text);
                setState(() {
                  _BmiResult = weight / (height * height);
                  if (_BmiResult > 25) {
                    _TextResult = 'over';
                  } else if (_BmiResult >= 18 && _BmiResult <= 25) {
                    _TextResult = 'ok';
                  } else {
                    _TextResult = 'under';
                  }
                });
              },
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: const Text(
                'Calculate',
                style: TextStyle(color: Colors.yellow, fontSize: 30),
              )),
          const SizedBox(
            height: 30,
          ),
          Text(
            _BmiResult.toString(),
            style: const TextStyle(color: Colors.yellow, fontSize: 30),
          ),
          const SizedBox(
            height: 30,
          ),
          Visibility(
            visible: _TextResult.isNotEmpty,
            child: Text(
              _TextResult,
              style: const TextStyle(color: Colors.yellow, fontSize: 30),
            ),
          ),
          const RightBar(barWeight: 30),
          const RightBar(barWeight: 60),
          const RightBar(barWeight: 30),
          const LeftBar(barWeight: 40),
          const LeftBar(barWeight: 60)
        ],
      ),
    );
  }
}

class RightBar extends StatelessWidget {
  final double barWeight;
  const RightBar({Key? key, required this.barWeight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 25,
            width: barWeight,
            decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}

class LeftBar extends StatelessWidget {
  final double barWeight;
  const LeftBar({Key? key, required this.barWeight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 25,
            width: barWeight,
            decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}
