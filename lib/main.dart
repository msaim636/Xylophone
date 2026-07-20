import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

void player(int number) {
  final playSound = AudioPlayer();
  playSound.play(AssetSource('note$number.wav'));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Xylophone());
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

Widget BuildKey({required Color color, required int noteNumber}) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        player(noteNumber);
      },
      child: Container(decoration: BoxDecoration(color: color)),
    ),
  );
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BuildKey(color: Colors.red, noteNumber: 1),
          BuildKey(color: Colors.orange, noteNumber: 2),
          BuildKey(color: Colors.yellow, noteNumber: 3),
          BuildKey(color: Colors.lime, noteNumber: 4),
          BuildKey(color: Colors.green, noteNumber: 5),
          BuildKey(color: Colors.blue, noteNumber: 6),
          BuildKey(color: Colors.purple, noteNumber: 7),
        ],
      ),
    );
  }
}
