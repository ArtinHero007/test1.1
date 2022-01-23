import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pokemon/game1.dart';
import 'package:pokemon/game2.dart';
import 'package:provider/provider.dart';
import 'menoBar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'clock.dart';
import 'controler.dart';
import 'main3.dart';



int number = 1;
int boySpriteCount = 2;
int boolSetCon = 0;

double mapX = 0;
double mapY = 0;
double WallrightMap2 = -3.0;
double WallupMap2 = 3.0;
double WallleftMap2 =3.0;
double WalldownMap2 =-3.0;
//list wall2[]

int KeyGame = 1;
int numberMap =1;
double setmod =1;

double goMotionX =0;
double goMotionY =0;

List <int> player =[55];
List <double> player2 = [mapX,mapY];

int numButton = 1;
int numButtonTouch =0;

String boySpriteCount2 = "right";
List <int> enterHall =[73];
List <int> StartHall =[104];


List <int> allWall =[
  0,1,2,3,4,5,6,7,8,9,
  10,20,30,40,50,60,70,80,90,100,
  19,29,39,49,59,69,79,89,99,109,
  100,101,102,103,104,105,106,107,108,109];

List<int>WallrightMap1 =[9,19,29,39,49,59,69,79,89,99,109,];
List<int>WallupMap1 =[0,1,2,3,4,5,6,7,8,9,];
List<int>WallleftMap1 =[0,10,20,30,40,50,60,70,80,90,100];
List<int>WalldownMap1 =[100,101,102,103,104,105,106,107,108,109];



void main()async{
  runApp(
      MultiProvider(
        providers:[
          ChangeNotifierProvider( create:(_)=> ProviderApp() )],
        ///ChangeNotifierProvider<ProviderApp>.value(notifier:ProviderApp(),)
        child:MyApp(),
      ));
  //runApp(main2(););
  //main2();
}

   ///Start
 class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      color:Colors.black,
      debugShowCheckedModeBanner: false,
      home: HomePage(),

);}}



class HomePage extends StatefulWidget {
  @override
  //HomePage(@required this.number);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //MyHomePageState({Key? key, required this.title}) : super(key: key);

  void initState(){
    super.initState();


    //Switch();
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications',//title/*'This channel is used for important notifications.', // description*/
        importance: Importance.high, playSound: true);
    final FlutterLocalNotificationsPlugin N =FlutterLocalNotificationsPlugin();


    Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
      await Firebase.initializeApp();
      print('A bg message just showed up :  ${message.messageId}');
    }



    Future<void> notification1() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

      await N.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
      //runApp(MyApp());
    }
    notification1();



    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification notification = message.notification;
      AndroidNotification android = message.notification?.android;
      if (notification != null && android != null) {

        N.show(notification.hashCode, notification.title, notification.body,

            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                //channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification notification = message.notification;
      AndroidNotification android = message.notification?.android;
      if (notification != null && android != null) {
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text(notification.title),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(notification.body)],
                  ),
                ),
              );
            });
      }
    });}


  Switch(){
    Timer.periodic(Duration(milliseconds:250),(timer) {
      setState(() {
        switch(numButtonTouch){
          case 1: moveRight();/*TouchMoveRight();numButtonTouch =1;*/break;
          case 2: moveUp();break;
          case 3: moveLeft();break;
          case 4: moveDown();break;
        }
      });
    });
  }

  ClockManage(){
    if(KeyGame ==3){
      return Clock();
    }else{ //if(KeyGame ==1){
      return Container();
    }
  }

  Map(){
    if(KeyGame == 1 && numberMap ==1){
      return Container(margin:EdgeInsets.all(0),alignment:Alignment(mapX,mapY), child:Image.asset("images/map.png",
          //width:400,height:400,
          width:MediaQuery.of(context).size.width -100,
          height:MediaQuery.of(context).size.width-80,fit:BoxFit.cover));
    }if(KeyGame ==2 && numberMap ==2){
      return Container();
    }
  }

  hall(){
    if(KeyGame == 1 && numberMap ==2){
      return /*Expanded(child:*/Container(margin:EdgeInsets.all(0),alignment:Alignment(0,0),child:Image.asset("images/hall.png",
          width:350,
          height:350,fit:BoxFit.cover));
    }if(KeyGame ==2 && numberMap == 1){
      return Container();
    }
  }

  GameDices game2 =new GameDices();
  Game2(){
    if(KeyGame ==2){
      return game2;
    }else{
      return Container();
    }
  }


  List<Widget> Con = [Container()];
  ButtonSetCon(){
    setState(() {
      boolSetCon ++;
      //setCon();
      if(boolSetCon % 2 != 0) {
        //Con.clear();
        //Con.add(menoBar());
        //Con.first=menoBar();
        Con.add(menoBar());
      } else{
        //Con.clear();
        //Con.first=Container();
        Con.removeAt(1);
      }
    });
  }


  void moveRight(){
    setState(() {
      moveRight2();
    });
  }
//setBoy();

  void moveUp(){
    setState(() {
      moveUp2();
    });
  }

  void moveLeft(){
    setState(() {
      moveLeft2();
    });
  }

  void moveDown(){
    setState(() {
      moveDown2();
    });
  }

  void pressedA(){
    setState(() {
      ///jump();
  });}
  void pressedB(){

  }

  @override
  Widget build(BuildContext context) {

    ///Start
    return Scaffold(

      body:SafeArea(
        child:Container(
          color:Colors.black,
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,

        child:ClipRRect(
        borderRadius:BorderRadius.circular(28),
          child:Container(

          child:Column(
          children:[
            AspectRatio(
              aspectRatio:0.95,
                child: GestureDetector(
                    onVerticalDragUpdate:(details){
                    if(setOnTouch == 2){
                      if(details.delta.dy > 0){
                        numButtonTouch =4;
                        moveDown();
                      }else if(details.delta.dy < 0){
                        numButtonTouch =2;
                        moveUp();
                      }
                      print(boySpriteCount2);
                      }},
                    onHorizontalDragUpdate:(details){
                    if(setOnTouch ==2){
                      if(details.delta.dx < 0){
                        numButtonTouch = 3;
                        moveLeft();
                      }
                      if(details.delta.dx > 0){
                        numButtonTouch =1;
                        moveRight();
                      }
                      print(boySpriteCount2);
                    };},
                child:

                Stack(
                    children:[
                      //Monitor[context.watch<game2Boy>()],
                      //Container(alignment:Alignment(0,0),child:g/*Lgame1.first*/),
                      ///Center(child:FloatingActionButton(child:Container(alignment:Alignment(mapX,mapY),height:100,width:100,child:Image(image:AssetImage("images/map.png"),)))),

                      Container(child:Map()),
                      Container(child:hall()),
                      Container(child:Boy()),
                      Container(child:BoyMap()),
                      ClockManage(),

                      /*Expanded(
                        child:*/Container(
                            decoration:BoxDecoration(
                              border:Border.all(
                              color:context.watch<ProviderApp>().Colorr,
                              ///context.watch <ProviderApp>().Colorr, //==
                                  ///C.pink ? Colors.blue : Colors.amber : Colors.brown : Colors.black, /*setColors[0]*/ //Colors.blueAccent,

                              width:20.0)),

                          child:Container(
                          decoration:BoxDecoration(
                            color:Colors.black87.withOpacity(0.05),
                            border:Border(
                              left:BorderSide(color:Colors.black87,width:30.0),
                              right:BorderSide(color:Colors.black87,width:30.0),
                              top:BorderSide(color:Colors.black87,width:30.0),
                            )),
                            ///child: Container(child:Lgame2.last),
                            child:Game2(),
                          ),
                        ),


                      Column(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children:[
                            Container(
                              width:MediaQuery.of(context).size.width,
                              height:50,
                              margin: EdgeInsets.only(left:20,right:20),
                              color:Colors.black87,
                              child:Row(
                                  mainAxisAlignment:MainAxisAlignment.center,
                                  children:[

                                    Text("G a m e    ",
                                        style:TextStyle(color:Colors.white,
                                          fontSize:18,)),

                                    Text("B o y",
                                        style:TextStyle(color:Colors.redAccent.shade200,
                                          fontSize:18,
                                          //shadows:[Shadow(color:Colors.white, blurRadius:2.0, offset:Offset(1,1))]
                                        ))]))
                          ]),

                            Row(mainAxisAlignment:MainAxisAlignment.end,children:[Con.last,]),



                    Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children:[

                       Container(
                         padding:EdgeInsets.only(right:16,top:16),
                         child:
                         FlatButton(
                           height:50,
                           minWidth:30,
                           padding:EdgeInsets.only(left:10,right:10),
                           onPressed:ButtonSetCon,
                           child:Icon(Icons.settings,color:Colors.white54,size:38),
                         ))]),
                    ]))
            ),




            Expanded(
              child:Container(
                color:context.watch<ProviderApp>().Colorr/*setColor*/,
                child:Padding(
                  padding:const EdgeInsets.all(9.0),
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[

                    Container(),

                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children:[

                      Container(
                      margin:EdgeInsets.only(right:4),
                      child:Row(children:[
                      Column(children:[


                        Container(width:50,height:50),
                         MyButton(
                        text:"←",
                        size:30.0,
                        padding:EdgeInsets.only(bottom:15),
                        function:moveLeft
                        ),
                        Container(width:50,height:50),


                      ]),Column(
                        children:[
                        MyButton(
                        text:"↑",
                        size:30.0,
                        padding:EdgeInsets.only(bottom:12),
                        function:moveUp
                        ),


                        Container(width:50,height:50),
                        MyButton(
                        text:"↓",
                        size:30.0,
                        padding:EdgeInsets.only(bottom:12),
                        function:moveDown//((){print("heloooo");})//moveDown
                        ),
                      ]),


                      Column(
                        children:[
                        Container(width:50,height:50),
                         MyButton(
                        text:"→",
                        size:30.0,
                        padding:EdgeInsets.only(bottom:15),
                        function:moveRight
                        ),
                        Container(width:50,height:50),
                      ])
                    ])),




                    Container(
                      margin:EdgeInsets.only(left:4),
                      child:Row(children:[
                          Column(children:[
                              Container(width:50,height:50),
                              MyButton(
                                text:"a",
                                size:24.0,
                                function:pressedA,
                        )]
                    ),


                      Column(children:[
                         MyButton(
                            text:"b",
                            size:24.0,
                            function:pressedB,
                        ),
                        Container(width:50,height:50),])
                    ])),
                  ]),

                  Text("C R E A T E   B Y   A R T I N",style:TextStyle(color:Colors.amberAccent,fontSize:13))
                  ],
              )),
            )
          ),
      ]))),
    )));
  }
}

///gridview
///gestureDetector
///BoxDecoration
///LinearGradient
/// contor alt L