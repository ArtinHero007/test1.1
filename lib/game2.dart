import "package:flutter/material.dart";
import 'dart:math';

//import "package:audioplayers/audio_cache.dart";
//import "package:audioplayers/audioplayers.dart";

class GameDices extends StatefulWidget {
  @override
  _GameDices createState() => _GameDices();
}

class _GameDices extends State {
  int num1 = 7;
  int num2 = 7;
  int num3 = 7;
  int num4 = 7;
  int point1 =0;
  int point2=0;
  int point3=0;
  int point4=0;
  String sum ="point:0";

  void setNumber(int a) {
    if (a == 1) {
      num1 = Random().nextInt(6) + 1;
      point1 = num1;
    }
    if (a == 2) {
      num2 = Random().nextInt(6) + 1;
      point2 = num2;
    }
    if (a == 3) {
      num3 = Random().nextInt(6) + 1;
      point3 = num3;
    }
    if (a == 4) {
      num4 = Random().nextInt(6) + 1;
      point4 = num4;
    }
  }

  void summ() {
    sum = (point1 + point2 + point3 + point4).toString();
    if (sum == null) {
      sum = "Start";
    }
  }

  void sound() {
    /*final click = AudioCache();
    click.play("click.mp3");*/
  }

  copyWidget({margin,width,padding,/*double width,*/String image, int number}) {
    return Container(
        width:120,//MediaQuery.of(context).size.width/4.4,
        height:120,//MediaQuery.of(context).size.height/9,
        margin: margin,
        child: Padding(
            padding:padding,/*EdgeInsets.all(5),*/
            child: FlatButton(
                minWidth:20,
                padding:EdgeInsets.only(top:8,bottom:8,left:8,right:8),
                onPressed: () {
                  setState(() {
                    setNumber(number);
                    sound();
                    summ();
                  });
                },
                child: /*Expanded(child:*/Image(/*width:50,*/image: AssetImage(image)))));
  }

  Widget build(BuildContext context) {
    return /*Expanded(
        child:*/Container(
        color: Colors.red[400],///red,
        //width:400,//MediaQuery.of(context).size.width/2.1,//170,
        //height:400,//MediaQuery.of(context).size.height/3.5,//170,
        margin: EdgeInsets.only(bottom:25),
        child:Padding(padding: EdgeInsets.all(0),
            child:Container(
                margin:EdgeInsets.all(0),
                child:Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                  Container(
                    //height: 83,
                      margin: EdgeInsets.all(2),
                      child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                            copyWidget(
                              //margin: EdgeInsets.only(right: 12,bottom:0),
                              //padding: EdgeInsets.only(top: 13, bottom: 13),
                                padding:EdgeInsets.only(left:5,right:5,top:5,bottom:0),
                                number: 1,
                                //width: 60,
                                image: "assets/dices/dice$num1.png"),
                            copyWidget(
                              //padding: EdgeInsets.only(top: 13, bottom: 13),
                                padding:EdgeInsets.only(left:5,right:5,top:5,bottom:0),
                                number: 2,
                                //width: 60,
                                image: "assets/dices/dice$num2.png"),
                          ]))),

                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    padding:EdgeInsets.only(),
                      color: Colors.orange,
                      //height: 29,
                      //margin: EdgeInsets.only(right:60, left: 70,bottom:0,top:0),
                      child: Center(
                          child:Padding(padding:EdgeInsets.only(top:5,bottom:5),child:Text("$sum",
                              style:
                              TextStyle(color: Colors.white, fontSize:20/*18*/))))),

                  Container(
                    //height: 83,
                      child: Center(
                          child: Row(
                            //mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                copyWidget(
                                  //margin: EdgeInsets.only(right: 10),
                                    padding:EdgeInsets.only(left:5,right:5,top:0,bottom:0),
                                    number: 3,
                                    //width: 60,
                                    image: "assets/dices/dice$num3.png"),
                                copyWidget(
                                    padding:EdgeInsets.only(left:5,right:5,top:0,bottom:0),
                                    number: 4,
                                    //width: 60,
                                    image: "assets/dices/dice$num4.png")
                              ])))
                  //FlatButton()
                ]))));
  }
}
