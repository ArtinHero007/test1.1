import 'package:flutter/material.dart';


/*


//BuildContext context =context;
//var height=MediaQuery.of(context).size.width;
//var width =MediaQuery.of(context).size.height;
//double boyheight = height -80 /10;
//double boywidth = width -100 /10;




List<List<double>> noMansLandLittleroot=[
  //[0.5,1.5],[0.5,1],[0.5,0.5],
  [4.0,4.0],[3.5,4.0],[3.0,4.0],[2.5,4.0],[2.0,4.0],[1.5,4.0],[1,4.0],[0.5,4.0],[0,4.0],[-0.5,4.0],[-1.0,4.0],[-1.5,4.0],[-2.0,4.0],[-2.5,4.0],[-3.0,4.0],[-3.5,4.0],[-4.0,4.0],
  [4.0,3.5],[4.0,3.0],[4.0,2.5],[4.0,2.0],[4.0,1.5],[4.0,1.0],[4.0,0.5],[4.0,0],[4.0,-0.5],[4.0,-1.0],[4.0,-1.5],[4.0,-2.0],[4.0,-2.5],[4,-2.5],[4.0,-3.0],[4.0,-3.5],[4.0,-4.0],
  [-4.0,3.5],[-4.0,3.0],[-4.0,2.5],[-4.0,2.0],[-4.0,1.5],[-4.0,1.0],[-4.0,0.5],[-4.0,0],[-4.0,-0.5],[-4.0,-1.0],[-4.0,-1.5],[-4.0,-2.0],[-4.0,-2.5],[-4.0,-2.5],[-4.0,-3.0],[-4.0,-3.5],[-4.0,-4.0],
  [4.0,-4.0],[3.5,-4.0],[3.0,-4.0],[2.5,-4,0],[2,-4.0],[1.5,-4.0],[1,-4.0],[0.5,-4.0],[0,-4.0],[-0.5,-4.0],[-1.0,-4.0],[-1.5,-4.0],[-2.0,-4.0],[-2.5,-4.0],[-3.0,-4.0],[-3.5,-4.0],[-4.0,-4.0],
];


///setState and varible stack
change_c(){
  c1=Colors.blue;
  c2=Colors.red;
  //c2=Container(height:100,width:100,color:Colors.red);
}
Color c1 = Colors.red;
Color c2 = Colors.blue;
Widget c3 = Container(height:100,width:100,color:c1,child:FlatButton(minWidth:50,onPressed:(){change_c();}));
Widget c4 = Container(height:100,width:100,color:c2,child:FlatButton(minWidth:50,onPressed:(){change_c();}));

class c extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(home:cc());}
}
class cc extends StatefulWidget{
  _cc createState()=> _cc();
}
class _cc extends State<cc>{
  ///cc get widget => super.widget;
  Widget build(BuildContext context) {
    return Container(child:Row(children:[
      aa(),
      bb()
    ]));
  }
}
class a extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
        home:aa());
  }
}
class aa extends StatefulWidget{
  _aa createState() => _aa();
}
class _aa extends State<aa>{
  Widget build(BuildContext context) {
    return c3;
  }}

class b extends StatelessWidget{
  Widget build(BuildContext context) {return
    MaterialApp(
        home: bb());
  }}
class bb extends StatefulWidget{
  _bb createState() => _bb();
}
class _bb extends State<bb>{
  Widget build(BuildContext context) {
    return c4;}}

class v extends StatelessWidget{
  Widget build(BuildContext context) {return
    MaterialApp(
        color:Colors.black,
        debugShowCheckedModeBanner: false,
        home: Container(height:100,width:100,color:Colors.amber,child:FlatButton(minWidth:50,onPressed:(){change_c();})));}}








///ars mari
change_c(){
  c1=Colors.blue;
  c2=Container(height:100,width:100,color:Colors.red);

}
Color c1 = Colors.red;
Widget c2 = Container(height:100,width:100,color:Colors.blue);

class a extends StatelessWidget{
  Widget build(BuildContext context) {return Container(height:100,width:100,color:Colors.amber);}}
// ignore: camel_case_types
class aa extends StatefulWidget{
_aa createState() => _aa();
}
class _aa extends State<aa>{
  Widget build(BuildContext context) {
    return Container(height:100,width:100,color:Colors.red);}}


class b extends StatelessWidget{
  Widget build(BuildContext context) {return Container(height:100,width:100,color:Colors.amber);}}
// ignore: camel_case_types
class bb extends StatefulWidget{
  _bb createState() => _bb();
}
class _bb extends State<aa>{
  Widget build(BuildContext context) {
    return Container(height:100,width:100,color:Colors.blue);}}






void main(){
  //MyApp();
  //notification1();
  //c;
  //runApp(c);
  //MyApp1();
  //t();
  //runApp(notification1());
  //runApp(MyHomePage1());
  //runApp(MyApp1());
  //runApp(t());
  runApp(
      MultiProvider(
        providers:[
          ChangeNotifierProvider( create:(_)=> ProviderApp() )],
        ///ChangeNotifierProvider<ProviderApp>.value(notifier:ProviderApp(),)
        child:MyApp(),
      ));
  //MyApp();
  //notification1();

  //runApp(notification1());
  //t();
  //runApp(t());

  //t2();
  //runApp(t2());
  //_t2();
  //_t2 tt =_t2();
  //runApp(_t2());

  //HomePage();
  //runApp(HomePage());
  //_HomePageState();
  //runApp(_HomePageState());
}



class t extends StatelessWidget{
  Widget build(BuildContext context) {return Container(height:100,width:100,color:Colors.amber);}}
// ignore: camel_case_types
class t2 extends StatefulWidget{void initState(){print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");}
_t2 createState() => _t2();
Widget build(BuildContext context) {return Container(child:context.read<_t2>().widget);/*Container(height:100,width:100,color:Colors.pink);*/}
}
Container c = Container(color:Colors.purple);

class _t2 extends State<t2>{
  void initState(){super.initState();print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");}
  Widget build(BuildContext context) {
    return Container(height:100,width:100,color:Colors.blue);}}




class m extends StatelessWidget{
  Widget build(BuildContext context) {
    Fm(){context.read<ProviderApp>().reloading();} }}

class m2 extends StatefulWidget {
  _m2 createState() => _m2();}
Fm(){context.read<ProviderApp>().reloading();}

class _m2 extends State<m2>{
  Widget build(BuildContext context) {Fm(){context.read<ProviderApp>().reloading();}}}



///main down
List <Function> LL = [bc];
List <Widget> LL2 = [Conta2];
// F1 = Colors.yellow;
class Conta3 extends StatelessWidget{
  Widget c2 = Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));
  Widget build(BuildContext context) {return c2;}}
Conta(){Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));}
Function bc =(){return Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));};

Widget Conta2 = Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));
class Conta4{
  Widget c2 = Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));
  Function bb =(){return Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));};
  c(){return Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));}
  c5(){return c2;}}

Conta3 s3 =Conta3();
Conta4 s4 =Conta4();
t1 ttt =t1();
t1 ttt =t1();
t2 ttt2 =t2();




///menobar down
class t{
  static Conta(){
    return Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));}
}

class t1 extends StatelessWidget{
  Widget f= Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));
  Function d =(){return Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));};
  FF(){return Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));}
  t1({this.f,this.d});
  //Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));}
  Widget build(BuildContext context) { return FF();}
}

class t2{
  var e=Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));
  Container f2 = Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));
  u2(){Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));}
}

class t3{
  var e=Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));
  Container f2 = Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));
  // ignore: non_constant_identifier_names
  Function f3 =(){return Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));};
  //Future Function; Container Function() f3 =(){return Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));};
  u2(){Container(width:70,height:70,child:CircleAvatar(backgroundColor:F1));}
  t3({this.e,this.f2});
}
class y{
  dd(){}
}
t2 m2 =t2();
t3 m3 =t3();
t tt =t();






AspectRatio(
aspectRatio:0.95,
child:Expanded(

child:Container(
color:Colors.blueAccent,
padding:EdgeInsets.only(top:15,left:15,right:15),
child:Container(
color:Colors.grey[900],
child:Column(children:[
AspectRatio(aspectRatio:1,child:
/*Expanded(
                        child:*/Container(
//color:Colors.blue,
padding:EdgeInsets.only(top:35,left:35,right:35),
child:Center(
child:Stack(
children:[
//MyBoy(),
LittleRoot(
x:mapX,
y:mapY,
//currentMap:currentLocation,
),
Container(alignment:Alignment(0,0),child:MyBoy())
])))),


*/