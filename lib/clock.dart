import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';


class Clock extends StatefulWidget {
  _Clock createState() => _Clock();
}

class _Clock extends State<Clock> {
  @override

  void initState(){
      super.initState();
      Timer.periodic(
          Duration(seconds:1),
          (timer){
          setState(() {});
      });
  }

  Widget build(BuildContext context) {

    var now = DateTime.now();
    var formattedTime = DateFormat("HH:mm").format(now);
    var formattedDate = DateFormat("EEE,d MMM").format(now);
    var timezoneString = now.timeZoneName;
    var offsetSign ="";
    if(!timezoneString.startsWith("-")){
      offsetSign ="";
    }
    print(timezoneString);

    //ex child:
    return MaterialApp(
      color:Color(0xFF2D2F41),home:
       Padding(padding:EdgeInsets.all(50),//child:Expanded(flex:5,
        child:Stack(children:[

        Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
          Container(child:Text("Clock",style:TextStyle(fontSize:35,color:Colors.white,decoration:TextDecoration.none),)),
          Container(child:Text(formattedDate,style:TextStyle(fontSize:20,color:Colors.white,decoration:TextDecoration.none),))
        ]),

        Center(
        child:Container(
        width:MediaQuery.of(context).size.width/2,
        height:MediaQuery.of(context).size.height/2,
        //width:200,
        //height:200,
        child: Transform.rotate(
          angle:-pi / 2,
          child:CustomPaint(painter:ClockApp())))),

        Column(mainAxisAlignment:MainAxisAlignment.end,
          children:[
            Container(margin:EdgeInsets.only(bottom:5),child:
            Row(mainAxisAlignment:MainAxisAlignment.center,children: [

            Container(child:Text(formattedTime/*offsetSign+timezoneString*/,style:TextStyle(fontSize:22,color:Colors.white,decoration:TextDecoration.none),)),

        ])),])

      ])
      ));
  }
}

class ClockApp extends CustomPainter {

  var dateTime = DateTime.now();//utc(2,1,1,23,30,22);
  //Widget build(BuildContext context){return Container();}

  @override
  void paint(Canvas canvas, Size size) {
    var CenterX = size.width/2;
    var CenterY = size.height/2;
    var center = Offset(CenterX,CenterY);
    var radius =min(CenterX,CenterY);

    var fillBrush = Paint()..color = Color(0xFF444974);
    ///Color(0xFF202F41)

    var outlineBrush =Paint()
      ..color = Color(0xFFEAECFF)
      ..style= PaintingStyle.stroke
      //..strokeCap = StrokeCap.round
      ..strokeWidth =12;

    var centerFillBrush =Paint()..color = Color(0xFFEAECFF);

    var secHandBrush = Paint()
      ..color = Colors.orange[300]
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    var minHandBrush = Paint()
    ..shader = RadialGradient(colors:[Color(0xFF77DDFF),Color(0xFF77DDFF)]).
      createShader(Rect.fromCircle(center: center, radius: radius))
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 8;

    var hourHandBrush = Paint()
    ..shader = RadialGradient(colors:[Color(0xFFEA74AB),Color(0xFFEA74AB)])
      .createShader(Rect.fromCircle(center: center, radius: radius))
    //..color = Colors.orange[300]
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

    var dashBrush = Paint()
    ..color = Color(0xFFEAECFF)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth =1;


    canvas.drawCircle(center, radius -40, fillBrush);
    canvas.drawCircle(center, radius -40, outlineBrush);

    var hourHandX = CenterX + 60 * cos((dateTime.hour *30 + dateTime.minute *0.5) * pi /180);
    var hourHandY = CenterY + 60 * sin((dateTime.hour *30 + dateTime.minute *0.5) * pi /180); // *0.5 * pi /180);
    canvas.drawLine(center,Offset(hourHandX,hourHandY),hourHandBrush);

    var minHandX = CenterX + 80 * cos(dateTime.minute *6 * pi /180);
    var minHandY = CenterY + 80 * sin(dateTime.minute *6 * pi /180);
    canvas.drawLine(center,Offset(minHandX,minHandY),minHandBrush);

    var secHandX = CenterX + 80 * cos(dateTime.second * 6 *pi /180);
    var secHandY = CenterY + 80 * sin(dateTime.second * 6 /*90*/ * pi /180);
    canvas.drawLine(center,Offset(secHandX,secHandY/*200,100*/),secHandBrush);

    canvas.drawCircle(center,12, centerFillBrush);


    var outerCircleRadius = radius;
    var innerCircleRadius = radius -14;
    for(double i = 0; i < 360; i +=12){
      var x1 = CenterX + outerCircleRadius * cos(i * pi / 180);
      var y1 = CenterY + outerCircleRadius * sin(i * pi / 180);

      var x2 = CenterX + innerCircleRadius * cos(i * pi / 180);
      var y2 = CenterY + innerCircleRadius * sin(i * pi / 180);
      //var t = CenterX = 5 =8;
      canvas.drawLine(Offset(x1,y1),Offset(x2,y2),dashBrush);
    }


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
