import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(),
      home: Scaffold(
        appBar:AppBar(
          title:Text('Random Background'),
        ),
        body: HomePage(),
      ),
    );
  }
}




class HomePage extends StatefulWidget {
  @override
   _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  var colors=[
    Colors.black,
    Colors.red,
    Colors.blue,
    
    Colors.orange,
    Colors.yellow,
    
  ];

  var col=[
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.brown,
  ];

  
  
  var currentColor=Colors.white;
  var currentcol=Colors.black;

  setRandomColor(){
    var rnd=Random().nextInt(colors.length);
    var rnd1=Random().nextInt(col.length);
    setState(() {
      currentColor=colors[rnd];
      currentcol=col[rnd1];
    });
  }





   @override
   Widget build(BuildContext context) {
    return Container(
       color: currentColor,
       child: Center(
         child: RaisedButton(
           color: currentcol,
           padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
           child: Text('Change Color',
           style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
           ),
           onPressed: setRandomColor,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(30.0),
           ),
         ),
       ),
    );
    
       
    
  }
} 