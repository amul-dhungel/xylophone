import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

playSound(int soundNumber){
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded keyBuilder({Color keyColor,int soundNummber}){
  return Expanded(
    child: FlatButton(
      color: keyColor,
      onPressed:(){
            playSound(soundNummber);
      },
      
     ) ,
  ); 

}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              
           keyBuilder(keyColor: Colors.red,soundNummber: 1),
             keyBuilder(keyColor: Colors.blue,soundNummber: 2),
              keyBuilder(keyColor: Colors.green,soundNummber: 3),
               keyBuilder(keyColor: Colors.yellow,soundNummber: 4),
                keyBuilder(keyColor: Colors.purple,soundNummber: 5),
                 keyBuilder(keyColor: Colors.teal,soundNummber: 6),
                  keyBuilder(keyColor: Colors.orange,soundNummber: 7),
            ],)
          

          ),
         
        ),
     
    );
  }
}
