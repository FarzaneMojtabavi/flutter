import 'package:flutter/material.dart';
class MobileSize extends StatelessWidget {
  const MobileSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('M O B I L E'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(8),
          child: Container(
            color: Colors.cyanAccent,
            height: 150.0,
            width: double.infinity,
          ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context,index){
              return Padding(padding: const EdgeInsets.all(8),
              child: Container(
                color: Colors.cyan,
                width: double.infinity,
                height: 60.0,
              ));
            }),
          )
        ],
      ),
    );
  }
}
