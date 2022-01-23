import 'dart:async';

import 'package:flutter/material.dart';
import 'main.dart';
import 'game1.dart';


class MyButton extends StatelessWidget {
  final text;
  final size;
  final padding;
  final function;

  MyButton({this.text,this.size,this.padding,this.function});

  @override
  Widget build(BuildContext context){
    return FlatButton(
        minWidth: 20,
        padding:EdgeInsets.all(2),
        onPressed:function,
        child:ClipRRect(
          borderRadius:BorderRadius.circular(10),
          child:Container(
            //color:Colors.grey[900],
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                border:Border.all(
                  width:2,
                  color:Colors.black38,
                ),
              ),
              height:52,
              width:52,
              child:Container(
                  color:Colors.grey[900],
                  //margin:EdgeInsets.all(1),
                  padding:padding,
                  child:Center(
                      child:Text(text,
                          style:TextStyle(color:Colors.white,fontSize:size))))),
        )
    );
  }
}


ManageMap(){
  if(player.first == enterHall.first){
    numberMap =2;
    player.first =94;
  }
  if(player.first == StartHall.first){
    numberMap = 1;
    //player.first =114;
    player.first =83;
  }
}


setMod(){
  if(setmod == 1){
    //mapX = goMotionX;mapY = goMotionY;
    //mapX.first = 0; mapY.first = 0;
    player.first=73;
  }
  if(setmod == 2){
    //mapX2 = goMotionX;mapY2 = goMotionY;
    mapX = 0; mapY = 0;
  }
}

List<List<double>>l = [[mapX,mapY]];

void moveRight2(){
    boySpriteCount=1;
    numButtonTouch =0;
    numButton =1;
    if(player.any((element) => WallrightMap1.contains(element))==false && numButton ==1 && KeyGame ==1 && setmod ==2){
      player.first=player.first+1;
    }
    if(player.any((element) => WallrightMap1.contains(element))==false && numButtonTouch == 1){
      player.first=player.first+1;
    }
    if(setmod == 1 && mapX != WallrightMap2 && KeyGame ==1){
      mapX -= 0.5;
    }

    ManageMap();
}
//setBoy();

void moveUp2(){
    boySpriteCount = 2;
    numButtonTouch =0;
    numButton =2;
    if(player.any((element) => WallupMap1.contains(element))==false && numButton ==2 && KeyGame ==1 && setmod ==2){
      player.first = player.first-10;
    }
    if(player.any((element) => WallupMap1.contains(element))==false && numButtonTouch == 2){
      player.first=player.first-10;}
    if(setmod == 1 && mapY != WallupMap2 && KeyGame ==1){
      mapY += 0.5;
    }
    ManageMap();
}


void moveLeft2(){
    boySpriteCount=3;
    numButtonTouch =0;
    numButton =3;
    if(player.any((element) => WallleftMap1.contains(element))==false && numButton ==3 && KeyGame ==1  && setmod ==2){
      player.first = player.first-1;}
    if(player.any((element) => WallleftMap1.contains(element))==false && numButtonTouch == 3){
      player.first=player.first-1;}
    if(setmod ==1 && mapX != WallleftMap2 && KeyGame ==1){
      mapX += 0.5;
    }
    ManageMap();
}


moveDown2(){
  boySpriteCount=4;
  numButtonTouch =0;
  numButton =4;
  if(player.any((element) => WalldownMap1.contains(element))==false && numButton ==4 && KeyGame ==1 && setmod ==2
  /*l.any((element) => l2.contains(element))l.removeWhere((element) => !l2.contains(element))*/){
    player.first = player.first+10;
  }
  if(player.any((element) => WalldownMap1.contains(element))==false && numButtonTouch == 4){
    player.first=player.first+10;
  }
  if(setmod ==1 && mapY != WalldownMap2 && KeyGame ==1){
    mapY -=0.5;
    //mapY.first -=0.5;
  }
  //context.read<ProviderApp>().reloading();
  //mapY -= 0.5;
  //mapY2 += 0.1;
  ManageMap();
  ///goMotionY -= 0.5;
  ///animateWalk();
  print("mapX= $mapX mapY= $mapY");
}

/*jump()async{
  boySpriteCount=2;
  numButton =5;
  if(player.any((element) => WallupMap1.contains(element))==false && numButton ==5 && KeyGame ==1 && setmod ==2){
    Timer.periodic(Duration(milliseconds:250),(timer){
     player.first = player.first-10;
    });}
  numButton =0;
  if(numButton ==0){
  Timer.periodic(Duration(milliseconds:150),(timer){
    player.first = player.first+10;
  });}
  switch{
    case:
  }
  numButton =1;
}*/

