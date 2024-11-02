import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  void playMusic(N) {
    AudioPlayer().play(AssetSource('sound-$N.mp3'));
  }

  Expanded mybutton(int N, Color buttonColor, String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero)),
          onPressed: () {
            playMusic(N);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(Icons.music_note_sharp, color: buttonColor,),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: Colors.brown,
          title: const Text(
            'Animal Sounds',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
        ),
        body: Column(
          children: [
            mybutton(1, const Color.fromARGB(255, 105, 74, 63), 'Duck'),
            mybutton(2, const Color.fromARGB(255, 115, 96, 64), 'Cat'),
            mybutton(3, const Color.fromARGB(255, 153, 129, 91), 'Dog'),
            mybutton(4, const Color.fromARGB(255, 179, 147, 95), 'Horse'),
            mybutton(5, const Color.fromARGB(255, 153, 129, 91), 'Sheep'),
            mybutton(6, const Color.fromARGB(255, 121, 102, 72), 'rooster'),
            mybutton(7, const Color.fromARGB(255, 105, 74, 63), 'Frog')
          ],
        ),
      ),
    );
  }
}
