import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});



  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playsound(int soundNumber) {
    final player = AudioPlayer();
    player.play('note$soundNumber.wav' as Source);
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(onPressed: () {
        playsound(soundNumber);
      }, child: const Text(" "),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.orange, soundNumber: 2),
                buildKey(color: Colors.teal, soundNumber: 3),
                buildKey(color: Colors.blue, soundNumber: 4),
                buildKey(color: Colors.green, soundNumber: 5),
                buildKey(color: Colors.black, soundNumber: 6),
                buildKey(color: Colors.yellow, soundNumber: 7),
              ],
            )),
      ),
    );
  }
}

