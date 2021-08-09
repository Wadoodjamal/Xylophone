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
  void playSound(int buttonNumber) {
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
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(1);
            },
            child: Container(
              color: Colors.black,
            ),
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(2);
            },
            child: Container(
              color: Colors.blue,
            ),
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(3);
            },
            child: Container(
              color: Colors.red,
            ),
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(4);
            },
            child: Container(
              color: Colors.green,
            ),
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(5);
            },
            child: Container(
              color: Colors.teal,
            ),
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(6);
            },
            child: Container(
              color: Colors.white,
            ),
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(7);
            },
            child: Container(
              color: Colors.yellow,
            ),
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          ),
        ),
      ],
    );
  }
}
