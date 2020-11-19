import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeapp extends StatefulWidget {
  _homeappState createState () => new _homeappState();
}

class _homeappState extends State<homeapp>{
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title:  Text ('Home'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Berhasil Berpindah Layar',style: TextStyle (fontSize: 15,height: 2.0,color: Colors.black,),),
      ),
    );
  }
}
