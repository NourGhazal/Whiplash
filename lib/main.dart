import 'package:flutter/material.dart';
 import 'package:audioplayers/audio_cache.dart';
 
 void main() => runApp(MyApp());
 
 class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 }
 
 class _MyAppState extends State<MyApp> {
   void play(){
     AudioCache player = AudioCache();
      player.play('wi.wav');

   }
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Center
           (
             child: Text('Whiplash'),
            
           ),
            backgroundColor :  Colors.amber
         ),
        body:  Center(
          child: FlatButton
          (child: Image.asset('images/w.png'),
          onPressed: play,
          ),
        )
        ,
       ), 

     );
   }
 }