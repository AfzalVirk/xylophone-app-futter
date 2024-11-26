import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnum) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/sounds/note$soundnum.wav"),
    );
  }

  Expanded buildkey({required Color color, required notenum}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playsound(notenum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.blue, notenum: 1),
              buildkey(color: Colors.red, notenum: 2),
              buildkey(color: Colors.orange, notenum: 3),
              buildkey(color: Colors.green, notenum: 4),
              buildkey(color: Colors.yellow, notenum: 5),
              buildkey(color: Colors.cyan, notenum: 6),
              buildkey(color: Colors.purple, notenum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
