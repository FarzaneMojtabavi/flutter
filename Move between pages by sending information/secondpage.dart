import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
String name;
int age;
secondPage(
    this.name,this.age    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Text('name: $name age: $age'),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20)
              ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('click')),
            ),
          ),
        ],
      ),
    );
  }
}
