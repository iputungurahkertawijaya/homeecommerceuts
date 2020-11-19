import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeecommerce/Product.dart';
import 'package:homeecommerce/productlist.dart';
import 'package:homeecommerce/splashcreen.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:homeecommerce/butiklist.dart';
import 'package:homeecommerce/info.dart';




void main() {
  runApp(MyApp());
}
//class Myapp
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


//class home
class Home extends StatefulWidget{
  _HomeState createState() => _HomeState();
}
class Menu {
  const Menu({this.title, this.icon});
  final String title;
  final String icon;

}
const List<Menu> menus = const[
  const Menu (title: "Batik", icon: "assets/batik.jpg"),
  const Menu (title: "Kebaya", icon: "assets/kebaya.jpg"),
  const Menu (title: "Dress", icon: "assets/dress.jpg"),
  const Menu (title: "Hijab", icon: "assets/hijab.jpg"),
  const Menu (title: "Tas", icon: "assets/tas.jpg"),
  const Menu (title: "Kemeja", icon: "assets/kemeja.jpg"),
  const Menu (title: "Kaos", icon: "assets/kaos.jpg"),
  const Menu (title: "Accesories", icon: "assets/jam.jpg"),
];

//class MenuCard
class MenuCard extends StatelessWidget{
  const MenuCard({Key key, this.menu}) : super(key:key);
  final Menu menu;
  Widget build(BuildContext context){
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>butiklist())
          );

        },

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(5),),
            Expanded(
                child:Image.asset(menu.icon, height: 80.0, width: 80.0,fit: BoxFit.contain,)
            ),
            Text(menu.title, style: TextStyle(fontSize: 12.0)),
            Padding(padding: EdgeInsets.all(5)),
            // Expanded(child:
            // Image.asset(menu.icon, height: 80.0, width: 80.0, fit: BoxFit.contain,)
            // ),
            // Text(menu.title, style: TextStyle(fontSize: 12.0)),
            // Padding(padding: EdgeInsets.all(5),),
          ],
        ),
      ),
    );
  }
}




void  _showDialog(BuildContext context, Menu menu){
  showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title:  new Text("Keterangan"),
        content: new Text ("Ini menu" + menu.title),
        actions: <Widget>[
          new FlatButton(
            child: new Text("close"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
        ],
      );
    }
  );
}

//class home
class _HomeState extends State<Home>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("BUTIX"),

        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.info, color: Colors.white),
            tooltip: 'add new entry',
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>infoapp())
              );
            },
          ),
        ],
      ),





      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(menus.length, (index) {
          return Center(

              child: MenuCard(menu: menus[index])
          );
        }),
      ),





      //botton navbar
      bottomNavigationBar: BottomNavigationBar(
       // backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,size: 35,),
             label: 'Butix',


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black,size: 35,),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black,size: 35,),
            label: 'Profil',

          ),
        ],
      ),
    );
  }






  // Widget Greyarea = Container(
  //  height:6.0 ,
  //   color: Colors.grey,
  // );




  // var mainmenulist = Container(
  //   height: 500,
  //   child: GridView.count(
  //      // padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
  //     crossAxisCount: 2,
  //     children: <Widget>[
  //   Container(
  //   color: Colors.red,
  //     child: Center(
  //       child: Text(
  //         "1",
  //         style: TextStyle(fontSize: 24.0),
  //
  //       ),
  //     ),
  //   ),
  //
  //     Container(
  //       color: Colors.blue,
  //       child: Center(
  //         child: Text(
  //           "2",
  //           style: TextStyle(fontSize: 24.0),
  //         ),
  //       ),
  //     ),
  //
  //     Container(
  //       color: Colors.yellow,
  //       child: Center(
  //         child: Text(
  //           "3",
  //           style: TextStyle(fontSize: 24.0),
  //         ),
  //       ),
  //     ),
  //
  //     Container(
  //       color: Colors.green,
  //       child: Center(
  //         child: Text(
  //           "4",
  //           style: TextStyle(fontSize: 24.0),
  //         ),
  //       ),
  //     ),
  //
  //     Container(
  //       color: Colors.pink,
  //       child: Center(
  //         child: Text(
  //           "5",
  //           style: TextStyle(fontSize: 24.0),
  //         ),
  //       ),
  //     ),
  //
  //     Container(
  //       color: Colors.orange,
  //       child: Center(
  //         child: Text(
  //           "6",
  //           style: TextStyle(fontSize: 24.0),
  //         ),
  //       ),
  //     ),
  //
  //     Container(
  //       color: Colors.grey,
  //       child: Center(
  //         child: Text(
  //           "7",
  //           style: TextStyle(fontSize: 24.0),
  //         ),
  //       ),
  //     ),
  //
  //     Container(
  //       color: Colors.deepPurple,
  //       child: Center(
  //         child: Text(
  //           "8",
  //           style: TextStyle(fontSize: 24.0),
  //         ),
  //       ),
  //     )]));



  //widget untuk slide image
  Widget MoviCarousel = Container(
    margin: EdgeInsets.only(top: 10.0),
    height: 200,
    child: Carousel(
      images: [
        AssetImage('assets/butix1.jpg'),
        AssetImage('assets/butix2.jpg'),
        AssetImage('assets/butix3.jpg'),
        AssetImage('assets/butix4.jpg'),
        AssetImage('assets/butix5.jpg'),
    ],
      dotSize: 8.0, // mengatur ukuran dot
    ),
    );

}





// var menuItems = [
//
//   {'image': 'assets/butix1.jpg', 'text'  : "aaaaa"},
//   {'image' : 'assets/butix2.jpg', 'text'  : 'putu'},
//   {'image' : 'assets/butix3.jpg', 'text'  : 'putu'},
//   {'image' : 'assets/butix4.jpg', 'text'  : 'putu'},
//   {'image' : 'assets/butix5.jpg', 'text'  : 'putu'},
//   {'image' : 'assets/butix1.jpg', 'text'  : 'putu'},
//   {'image' : 'assets/butix1.jpg', 'text'  : 'putu'},
//   {'image' : 'assets/butix1.jpg', 'text'  : 'putu'},
//   {'image' : 'assets/butix1.jpg', 'text'  : 'putu'},
//
// ];

