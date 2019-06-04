import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SimpleState();
  }

}
class SimpleState extends State{
  Color _backgroundColor = Colors.white;                    //color handlers, i don't know where is better
  Color _textColor = Colors.black;                          //set value so i did it here, also i heard sow that
                                                            //"_" needed before variable so i add it)

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first flutter app',
      home: Scaffold(
        backgroundColor: _backgroundColor,

        body: Center(
          child: GestureDetector(              //try to make body clickable
            onTap: (){
              setState(() {
                _backgroundColor=randomColorGenerator();
              });
            },
            child: Text("Hello there",        //text and it's style here
                style: TextStyle(
                fontSize: 50,
                color: _textColor,
              ),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton( // you can't see black text on black background so i add this button
          child: const Text("click!"),
          onPressed: (){
            setState(() {
              _textColor = randomColorGenerator();
            });
          },
        ),
      ),
    );
  }
  Color randomColorGenerator(){  //generate random color with rgb system
    Random rng = new Random();
    return Color.fromRGBO(rng.nextInt(255), rng.nextInt(255), rng.nextInt(255),1);
  }
}



