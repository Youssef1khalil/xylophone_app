import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSoundButton(Colors.red, 1),
            _buildSoundButton(Colors.orange, 2),
            _buildSoundButton(Colors.yellow, 3),
            _buildSoundButton(Colors.green, 4),
            _buildSoundButton(Colors.teal, 5),
            _buildSoundButton(Colors.blueAccent, 6),
            _buildSoundButton(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}

_buildSoundButton(Color color, int numOfSound) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          color,
        ),
      ),
      onPressed: () {
        final player = AudioCache();
        player.play('note$numOfSound.wav');
      },
      child: Text(
        'Sound$numOfSound',
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
