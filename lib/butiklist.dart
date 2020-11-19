import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class butiklist extends StatefulWidget {
  _butiklistState createState () => new _butiklistState();
}

class _butiklistState extends State<butiklist>{
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title:  Text ('List Produk'),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      _butik1(),
                      _butik2(),
                      _butik3(),
                      _butik4(),
                      _butik5(),
                      _butik6(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _butik1(){
  return Column(
    children: <Widget>[
      Card(
        child: Row(
          children: <Widget>[
            Image.asset("assets/butix1.jpg",width: 65.0, height: 130.0,),

            Expanded(child: Container(
              child: Column(
                children: <Widget>[
                  Text('Batik Jogja', style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text('Tersedia ukuran L,XL',style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text ('Rp 250.000',style: TextStyle(color: Colors.blue,fontSize: 20.0)),
                ],
              ),
            ))
          ],
        ),
      )
    ],
  );
}


Widget _butik2(){
  return Column(
    children: <Widget>[
      Card(
        child: Row(
          children: <Widget>[
            Image.asset("assets/butix2.jpg",width: 65.0, height: 130.0,),

            Expanded(child: Container(
              child: Column(
                children: <Widget>[
                  Text('Batik Jogja', style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text('Tersedia ukuran L,XL',style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text ('Rp 250.000',style: TextStyle(color: Colors.blue,fontSize: 20.0)),
                ],
              ),
            ))
          ],
        ),
      )
    ],
  );
}


Widget _butik3(){
  return Column(
    children: <Widget>[
      Card(
        child: Row(
          children: <Widget>[
            Image.asset("assets/butix3.jpg",width: 65.0, height: 130.0,),

            Expanded(child: Container(
              child: Column(
                children: <Widget>[
                  Text('Batik Jogja', style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text('Tersedia ukuran L,XL',style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text ('Rp 250.000',style: TextStyle(color: Colors.blue,fontSize: 20.0)),
                ],
              ),
            ))
          ],
        ),
      )
    ],
  );
}

Widget _butik4(){
  return Column(
    children: <Widget>[
      Card(
        child: Row(
          children: <Widget>[
            Image.asset("assets/butix4.jpg",width: 65.0, height: 130.0,),

            Expanded(child: Container(
              child: Column(
                children: <Widget>[
                  Text('Batik Jogja', style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text('Tersedia ukuran L,XL',style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text ('Rp 250.000',style: TextStyle(color: Colors.blue,fontSize: 20.0)),
                ],
              ),
            ))
          ],
        ),
      )
    ],
  );
}


Widget _butik5(){
  return Column(
    children: <Widget>[
      Card(
        child: Row(
          children: <Widget>[
            Image.asset("assets/butix5.jpg",width: 65.0, height: 130.0,),

            Expanded(child: Container(
              child: Column(
                children: <Widget>[
                  Text('Batik Jogja', style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text('Tersedia ukuran L,XL',style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text ('Rp 250.000',style: TextStyle(color: Colors.blue,fontSize: 20.0)),
                ],
              ),
            ))
          ],
        ),
      )
    ],
  );
}


Widget _butik6(){
  return Column(
    children: <Widget>[
      Card(
        child: Row(
          children: <Widget>[
            Image.asset("assets/butix5.jpg",width: 65.0, height: 130.0,),

            Expanded(child: Container(
              child: Column(
                children: <Widget>[
                  Text('Batik Jogja', style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text('Tersedia ukuran L,XL',style: TextStyle(color: Colors.black),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text ('Rp 250.000',style: TextStyle(color: Colors.blue,fontSize: 20.0)),
                ],
              ),
            ))
          ],
        ),
      )
    ],
  );
}