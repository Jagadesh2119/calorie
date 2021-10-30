import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Overflow', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amber.shade200,
      ),
      body: Center(
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width*0.6,
          color: Colors.blue.shade300,
          child: Column(
            children: [
              Text("Kasukabe defence force, Action kamen, I'm Shinchan and my age is 5. My thangachi is Himawari,"
                  "my amma is Mitsy Nohara, my appa is Hiroshi Nohara",
                style: TextStyle(fontWeight: FontWeight.bold), maxLines: 2, overflow:  TextOverflow.ellipsis,
              ),
              Visibility(
                visible: show,
                child: Text("Kasukabe defence force, Action kamen, I'm Shinchan and my age is 5. My thangachi is Himawari,"
                  "my amma is Mitsy Nohara, my appa is Hiroshi Nohara",
                style: TextStyle(fontWeight: FontWeight.bold), maxLines: 2,
              ),)
            ],
          )
        ),
      ),
    );
  }
}
