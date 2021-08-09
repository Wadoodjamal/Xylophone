import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Xylophone'),
          centerTitle: true,
        ),
        body: xylophone(),
        backgroundColor: Colors.blue.shade200,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class xylophone extends StatefulWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  _xylophoneState createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {

  //This method will set the state of the playing sound
  void playSound(int buttonNumber){
    setState(() {
      final player = AudioCache();
      player.play('note$buttonNumber.wav');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          onPressed: () {
            playSound(1);  
          },
          child: Container(
            height: 80.0,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: () {
            playSound(2);
          },
          child: Container(
            height: 80.0,
            color: Colors.blue,
          ),
        ),
        TextButton(
          onPressed: () {
            playSound(3);
          },
          child: Container(
            height: 80.0,
              color: Colors.red,
            ),
          ),
        TextButton(
          onPressed: () {
            playSound(4);
          },
          child: Container(
            height: 80.0,
            color: Colors.green,
          ),
        ),
        TextButton(
          onPressed: () {
            playSound(5);
          },
          child: Container(
            height: 80.0,
            color: Colors.teal,
          ),
        ),
        TextButton(
          onPressed: () {
            playSound(6);
          },
          child: Container(
            height: 80.0,
            color: Colors.yellow,
          ),
        ),
        TextButton(
          onPressed: () {
            playSound(7);
          },
          child: Container(
            height: 80.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
