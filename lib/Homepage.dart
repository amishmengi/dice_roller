import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");
  AssetImage diceimage;
  AssetImage diceimage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = two;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int random2 = (1 + Random().nextInt(6));
    AssetImage newImage;
    AssetImage newImage2;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }

     switch (random2) {
      case 1:
        newImage2 = one;
        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;
        break;
      case 6:
        newImage2 = six;
        break;
    }


    setState(() {
      diceimage = newImage;
      diceimage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice roller!!!!!!'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Image(
                image: diceimage,
                height: 100.0,
                width: 100.0,

              ),
              SizedBox(height: 50),
              Image(
                image: diceimage2,
                height: 100.0,
                width: 100.0,
              ),
              Container(
              margin:EdgeInsets.only(top:100.0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: rollDice,
                color:Colors.yellow,
                shape: new RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                   borderRadius: new BorderRadius.circular(50.0),
                 ),
                padding:EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Text('roll the dice!!!!',style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)
                ))
              )],
          ),
        ),
      ),
    );
  }
}
