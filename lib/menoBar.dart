import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'game1.dart';
import 'game2.dart';




enum C{pink,blue,amber,brown,black}
class ProviderApp extends ChangeNotifier{
  Color Colorr = Colors.pink;
  ///mapY -= 0.5;

  //int get a => _Colorr;
  //int set b(String b) => b=c;
  reloading(){
    //m mm =m();
    //mm.Fm();
    ///Colorr = setColor;
    notifyListeners();
  }
}

Color touchColor = Colors.white;
int turnOn =1;
int setOnTouch = 1;

//f.setNumber;
//f.copyWidget();

class menoBar extends StatefulWidget {
  _menoBar createState() => _menoBar();
}

class _menoBar extends State<menoBar>{
  //Color Colorr = Colors.pink;
  @override

  Widget build(BuildContext context) {

    //_HomePageState H = _HomePageState();
    ///menoBar1(){
    ProviderApp PA = ProviderApp();


    setButtonGame1(){KeyGame =1; context.read<ProviderApp>().reloading();}
    setButtonGame2(){KeyGame =2; /*Lgame2.add(game2);*/ context.read<ProviderApp>().reloading();}
      //Lgame1.clear(); Lgame2.add(game2);


    setButtonMod1(){if(numberMap ==1){setmod =1;player.first =55;}/*mapX2=0;mapY2=0;*/context.read<ProviderApp>().reloading();}
    setButtonMod2(){player.first =55;setmod =2;mapX = 0;mapY = 0;context.read<ProviderApp>().reloading();}
    //goMotionX = 0;goMotionY = 0;

    setButton1(){context.read<ProviderApp>().Colorr = Colors.pink;context.read<ProviderApp>().reloading(); /*Colorr = Colors.pink;*/ /*HomePage();*/}
    setButton2(){context.read<ProviderApp>().Colorr = Colors.blue;context.read<ProviderApp>().reloading(); /*Colorr = Colors.blue;*/  /*setColors.clear();setColors.add(Colors.lightBlue*/}
    setButton3(){context.read<ProviderApp>().Colorr = Colors.amber;context.read<ProviderApp>().reloading();  /*setApply.use()*/}
    setButton4(){context.read<ProviderApp>().Colorr = Colors.brown;context.read<ProviderApp>().reloading(); }
    setButton5(){context.read<ProviderApp>().Colorr = Colors.black;context.read<ProviderApp>().reloading(); }
    setButton6(){context.read<ProviderApp>().Colorr = Colors.purple;context.read<ProviderApp>().reloading();}
    // PA.setColor2();  H.ButtonSetCon;

    //context.read<ProviderApp>().Colorr = Colors.pink; yes
    //setColor = Colors.black; 2end

    setTouch(){setState(() {
      turnOn ++;
      if(turnOn % 2 == 0) {touchColor = Colors.lightBlue[500]; setOnTouch =2;}
      else{touchColor = Colors.white; setOnTouch =1;}
    });}

    setClock(){
      KeyGame =3; context.read<ProviderApp>().reloading();
    }


    CopyWidgetCircle(function,color,margin){
        return Container(
            margin:EdgeInsets.only(left:margin,bottom:3,top:3),
            child:ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child:FlatButton(
                    minWidth:72,
                    padding:EdgeInsets.symmetric(vertical:0),
                    onPressed:function,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor:color,
                    ))));
    }

    return AspectRatio(aspectRatio:0.6,
       child:
       ClipRRect(
           borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30)),
           child:
      Container(
        margin: EdgeInsets.only(bottom:10),
        padding:EdgeInsets.only(top:65,),
        color:Colors.black26,//Colors.grey.shade300,
        //decoration:BoxDecoration(borderRadius:BorderRadius.circular(10)),

        child:
        Column(children: [
              Row(mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                Container(
                    margin: EdgeInsets.all(5),
                    child: FlatButton(
                        onPressed:setButtonGame1,
                        child:ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child:Image.asset("images/logo 2.png",height:70,fit:BoxFit.cover)))),
                Container(
                    margin: EdgeInsets.all(5),
                    child: FlatButton(
                        onPressed:setButtonGame2,
                        child: ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child:Image.asset("images/dice logo.png",height:70,fit:BoxFit.cover))))
              ]),
              Row(mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                Container(
                  color:Colors.lightBlue,
                    margin: EdgeInsets.all(5),
                    child: FlatButton(
                        onPressed:setButtonMod1,
                        child:Column(children:[
                            Text("Game",
                               style: TextStyle(
                                fontSize: 20, color: Colors.white,backgroundColor: Colors.lightBlue)),
                            Text("Mod 1",style: TextStyle(
                                fontSize: 20, color: Colors.white,backgroundColor: Colors.lightBlue))
                        ]))),

                Container(
                  color:Colors.deepOrangeAccent,
                    margin: EdgeInsets.all(5),
                    child: FlatButton(
                      onPressed:setButtonMod2,
                        child:Column(children:[
                          Text("Game",
                             style: TextStyle(
                                fontSize: 20,color: Colors.white,backgroundColor: Colors.deepOrangeAccent)),
                          Text("Mode 2",
                            style: TextStyle(
                                fontSize: 20,color: Colors.white,backgroundColor: Colors.deepOrangeAccent)),
                      ]))),

              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                   CopyWidgetCircle(setButton1,Colors.pink,0.0),
                   CopyWidgetCircle(setButton2,Colors.lightBlue,0.0),
                   CopyWidgetCircle(setButton3,Colors.amber, 0.0),
              ]),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CopyWidgetCircle(setButton4,Colors.brown, 0.0),
                  CopyWidgetCircle(setButton5,Colors.black,0.0),
                  CopyWidgetCircle(setButton6,Colors.purple,0.0)
              ]),
              Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
               children: [

                Container(
                  height:40,
                  width:70,
                  color:touchColor,
                    child:FlatButton(
                        onPressed:setTouch,
                        child:Padding(padding:EdgeInsets.all(0),child:Text("Touch", style:TextStyle())))),

                 Container(
                     margin: EdgeInsets.all(5),
                     child: FlatButton(
                         onPressed:setClock,
                         child:Column(children:[
                           ClipRRect(borderRadius:BorderRadius.circular(10),child:Image.asset("images/clock.png",height:45,fit:BoxFit.cover,)),
                           Text("Clock",
                               style: TextStyle(
                                   fontSize: 20, color: Colors.white,)),
                         ]))),
               ],)
            ]))));
  }}

