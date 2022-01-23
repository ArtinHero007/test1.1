
import 'package:flutter/material.dart';
import 'main.dart';


class LittleRoot extends StatelessWidget{
  double x;
  double y;
  String currentMap;

  LittleRoot({this.x,this.y});

  @override
  Widget build(BuildContext context){
    //if(currentMap == "littleroot"){

    return Container(
        margin:EdgeInsets.all(20),
        alignment:Alignment(x,y),
        child:Image.asset("images/map.png",
            width:300,/*Bug 300px*/ //MediaQuery.of(context).size.width*0.75,
            height:320,//MediaQuery.of(context).size.width,
            fit:BoxFit.cover)

    );
  }
}

//int boySpriteCount = 1;
class MyBoy extends StatelessWidget{
  int boySpriteCount = 1;
  String diretion;
  String location;
  double height = 20;

//MyApp = new MyAppCopy1();

  @override
  Widget build(BuildContext context){

    if(number == 1){
      boySpriteCount = 1;
    }
    if(number == 2){
      boySpriteCount = 2;
    }
    if(number ==3 ){
      boySpriteCount = 3;
    }
    if(number ==4 ){
      boySpriteCount = 4;
    }

    return Container(
      alignment:Alignment(0,0),
      height:25,
      width:18,
      child:Image.asset("images/$boySpriteCount.png",
        fit:BoxFit.cover,
      ),
    );
  }
}


Boy(){
  if(KeyGame ==1 && setmod ==1){
    return Container(alignment:Alignment(0,0),child:Container(height:30/*25,18*/,width:18,child:Image.asset("images/$boySpriteCount.png",fit:BoxFit.cover,)),);
  }else{
    return Container();
  }
}


BoyMap(){

  if(KeyGame ==1 && setmod == 2){

    return Padding(padding:EdgeInsets.all(50),child://Expanded(flex:5,child:
    Container(child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount:110,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:10
        ),
        /// ignore: missing_return
        itemBuilder:(BuildContext context,int index){
          /*if(player != index){
            //return Boy();
            else */if(player.contains(index)){
            return Container(alignment:Alignment(0,0/*mapX2,mapY2*/),child:Container(height:30,width:20,child:Image.asset("images/$boySpriteCount.png",fit:BoxFit.cover,)),);//Container(child:Image.asset("images/1.png"));
            ///Transform
          }
          else{
            return Padding(
                padding:EdgeInsets.all(1.0),
                child:Container(/*color:Colors.red,child:Text(index.toString())*/));
          }
        })));}

  else{
    return Container();
  }
}



