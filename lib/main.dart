import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//Players:
final audioPlayers = <AudioPlayer>[
  AudioPlayer(),
  AudioPlayer(),
  AudioPlayer(),
  AudioPlayer(),
  AudioPlayer(),
  AudioPlayer(),
  AudioPlayer(),
];
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
              onPressed: () async {
                const int i = 0;
                if (audioCache.loadedFiles.length != notes.length) {
                  await audioCache.loadAll(notes);
                }
                await audioPlayers[i].stop();
                await audioPlayers[i].play(
                  AssetSource(notes[i]),
                );
              },
              child: Container(
                height: height,
                color: Colors.red,
              ),
            ),
            TextButton(
              onPressed: () async {
                const int i = 1;
                if (audioCache.loadedFiles.length != notes.length) {
                  await audioCache.loadAll(notes);
                }
                await audioPlayers[i].stop();
                await audioPlayers[i].play(
                  AssetSource(notes[i]),
                );
              },
              child: Container(
                height: height,
                color: Colors.blue[900],
              ),
            ),
            TextButton(
              onPressed: () async {
                const int i = 2;
                if (audioCache.loadedFiles.length != notes.length) {
                  await audioCache.loadAll(notes);
                }
                await audioPlayers[i].stop();
                await audioPlayers[i].play(
                  AssetSource(notes[i]),
                );
              },
              child: Container(
                height: height,
                color: Colors.teal,
              ),
            ),
            TextButton(
              onPressed: () async {
                const int i = 3;
                if (audioCache.loadedFiles.length != notes.length) {
                  await audioCache.loadAll(notes);
                }
                await audioPlayers[i].stop();
                await audioPlayers[i].play(
                  AssetSource(notes[i]),
                );
              },
              child: Container(
                height: height,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () async {
                const int i = 4;
                if (audioCache.loadedFiles.length != notes.length) {
                  await audioCache.loadAll(notes);
                }
                await audioPlayers[i].stop();
                await audioPlayers[i].play(
                  AssetSource(notes[i]),
                );
              },
              child: Container(
                height: height,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () async {
                const int i = 5;
                if (audioCache.loadedFiles.length != notes.length) {
                  await audioCache.loadAll(notes);
                }
                await audioPlayers[i].stop();
                await audioPlayers[i].play(
                  AssetSource(notes[i]),
                );
              },
              child: Container(
                height: height,
                color: Colors.blueGrey,
              ),
            ),
            TextButton(
              onPressed: () async {
                const int i = 6;
                if (audioCache.loadedFiles.length != notes.length) {
                  await audioCache.loadAll(notes);
                }
                await audioPlayers[i].stop();
                await audioPlayers[i].play(
                  AssetSource(notes[i]),
                );
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
