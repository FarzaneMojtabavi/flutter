import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp( const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
  ));
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myUrl='https://jsonplaceholder.typicode.com/posts';
  var dataFetched=[];
  void getData()async{
    final response=await http.get(Uri.parse(myUrl));
    final jsonData=jsonDecode(response.body) as List;
    setState(() {
      dataFetched=jsonData;
    });
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
        body: ListView.builder(
          itemCount: dataFetched.length,
          itemBuilder: (context, index){
            final data=dataFetched[index];
            return Text('title: ${data["title"]}\n body: ${data["body"]}\n\n');
          },
        )
    );
  }
}

