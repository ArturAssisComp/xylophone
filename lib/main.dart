import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//Players:
final audioCache = AudioCache();
const notes = <String>[
  'note1.wav',
  'note2.wav',
  'note3.wav',
  'note4.wav',
  'note5.wav',
  'note6.wav',
  'note7.wav',
];

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Widget generateButton(int soundIndex, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundIndex);
        },
        child: const Text(''),
      ),
    );
  }

  void playSound(int i) async {
    if (audioCache.loadedFiles.length != notes.length) {
      await audioCache.loadAll(notes);
    }
    final audioPlayer = AudioPlayer();
    audioPlayer.play(
      AssetSource(
        notes[i],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Xylophone',
            ),
            backgroundColor: Colors.blue[800],
          ),
          backgroundColor: Colors.blue,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              generateButton(0, Colors.red),
              generateButton(1, Colors.blueGrey),
              generateButton(2, Colors.teal),
              generateButton(3, Colors.white),
              generateButton(4, Colors.black),
              generateButton(5, Colors.deepPurpleAccent),
              generateButton(6, Colors.amberAccent),
            ],
          ),
        ),
      ),
    );
  }
}
