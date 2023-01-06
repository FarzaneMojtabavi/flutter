import 'package:flutter/material.dart';
class TabletSize extends StatelessWidget {
  const TabletSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('T A B L E T'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.all(8),
                  child: Container(
                    color: Colors.orangeAccent,
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
                              color: Colors.amberAccent,
                              width: double.infinity,
                              height: 60.0,
                            ));
                      }),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200.0,
              color: Colors.lightGreenAccent,
            ),
          )
        ],
      ),
    );
  }
}
