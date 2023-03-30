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
    const double height = 70;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Xylophone',
          ),
          backgroundColor: Colors.blue[800],
        ),
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextButton(
              onPressed: () {
                playSound(0);
              },
              child: Container(
                height: height,
                color: Colors.red,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(1);
              },
              child: Container(
                height: height,
                color: Colors.blue[900],
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(2);
              },
              child: Container(
                height: height,
                color: Colors.teal,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(3);
              },
              child: Container(
                height: height,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(4);
              },
              child: Container(
                height: height,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(5);
              },
              child: Container(
                height: height,
                color: Colors.blueGrey,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(6);
              },
              child: Container(
                height: height,
                color: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
