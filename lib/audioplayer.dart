import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: AudioScreen()));
}

class AudioScreen extends StatefulWidget {
  const AudioScreen({Key? key}) : super(key: key);

  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 60,
        width: double.infinity,
      ),
    );
  }
}
