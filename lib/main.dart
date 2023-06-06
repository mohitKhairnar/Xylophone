import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XyloPhoneApp());
}
class XyloPhoneApp extends StatelessWidget {
  const XyloPhoneApp({Key? key}) : super(key: key);
void playSound(int soundNumber){
  final player = AudioCache();
  player.play("assets_note$soundNumber.wav");
}
Expanded buildKey({required Color color, required int soundNumber}){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: (){
        playSound(soundNumber);
      },child: Text("Press Me"),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Xylophone"),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(color: Colors.red,soundNumber: 1),
              buildKey(color: Colors.orange,soundNumber: 2),
              buildKey(color: Colors.yellow,soundNumber: 3),
              buildKey(color: Colors.green,soundNumber: 4),
              buildKey(color: Colors.blue,soundNumber: 5),
              buildKey(color: Colors.indigo,soundNumber: 6),
              buildKey(color: Colors.purple,soundNumber: 7),

            ],
          ),

        ),
      ),
    );
  }
}

