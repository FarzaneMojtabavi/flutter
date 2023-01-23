import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  final myUrl = 'https://jsonplaceholder.typicode.com/posts';
  var dataFetched = [];

  void getData() async {
    final response = await http.get(Uri.parse(myUrl));
    final jsonData = jsonDecode(response.body) as List;
    setState(() {
      dataFetched = jsonData;
    });
  }

  void postData() async {
    final response = await http.post(Uri.parse(myUrl),
        body: {"userId": "1", "title": "web", "body": "hello"});
    print(response.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent.shade400,
        body:ListView(
          shrinkWrap: false,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: postData,
                child: Text('post data.click'),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: dataFetched.length,
              itemBuilder: (context, index) {
                final data = dataFetched[index];
                return Text('title: ${data["title"]}\n body: ${data["body"]}\n\n');
              },
            )
          ],
        ));
  }
}
