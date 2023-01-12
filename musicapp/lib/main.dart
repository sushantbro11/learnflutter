import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}


class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             getView(1, Colors.red),
              getView(2, Colors.orange),
              getView(3, Colors.yellow),
              getView(4, Colors.greenAccent),
              getView(5, Colors.green),
              getView(6, Colors.blue),
              getView(7, Colors.purple),


            ],
          ),
        ),
      ),
    );
  }
}

void player(int a) {
  final player = AudioCache();
  player.play('note$a.wav');
}
Widget getView(int pos, Color color ){
  return Expanded(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: () {
        player(pos);
      },
      child: Text(''),
    ),
  );

}

