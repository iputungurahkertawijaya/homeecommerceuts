import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infoapp extends StatefulWidget {
  _infoappState createState () => new _infoappState();
}

class _infoappState extends State<infoapp>{
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title:  Text ('Info Apps'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Aplikasi Butik Merupakan Sebuah E-Commerce',style: TextStyle (fontSize: 15,height: 2.0,color: Colors.black,),),
      ),
    );
  }
}
