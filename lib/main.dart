import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(Home());

}



class MyApp extends StatefulWidget {
  MyApp({Key? key}) :super(key: key);


  @override
  State<MyApp> createState() => _MyAppState();
}

int selectedIndex=0;
List activities=[
  {"id":1,"path":"assets/runner.png","title":"Jogging" },
  {"id":2,"path":"assets/electric-guitar.png","title":"Play Guitar" },
  {"id":3,"path":"assets/game.png","title":"Gaming" },
  {"id":4,"path":"assets/painting.png","title":"Painting" },
  {"id":5,"path":"assets/party.png","title":"Party" },
  {"id":6,"path":"assets/shopping.png","title":"Shopping" },
  {"id":7,"path":"assets/trading.png","title":"Trading" },
  {"id":8,"path":"assets/writing.png","title":"Writing" },
  {"id":9,"path":"assets/coding.png","title":"Coding" },
  {"id":10,"path":"assets/shopping.png","title":"Shopping" },
  {"id":11,"path":"assets/trading.png","title":"Trading" },
  {"id":12,"path":"assets/writing.png","title":"Writing" },
  {"id":13,"path":"assets/coding.png","title":"Coding" },
];

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: "/login",
        routes: {
        "/home":(context)=> MyApp(),
        "/login":(context)=> Login()
     }
    );
  }
}



class _MyAppState extends State<MyApp>{

   @override
  void initState() {
    super.initState();
    selectedIndex=selectedIndex ?? 0;
  }
  @override
  Widget build(BuildContext context){

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade50,
          body:Stack(children:[Column(
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                        child:Text("Choose Activity",  textAlign: TextAlign.center, style: TextStyle(color:Color.fromRGBO(0, 0, 34, 1),fontSize: 35, fontWeight: FontWeight.bold ),)
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 0,20), child: Text("You can choose only one", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Color.fromARGB(100,165 , 167, 170)),),)
                  ],
                ),
              ),
              Center(
                child:Padding(  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),child: ClipPath(child:Container(height:2,width: double.infinity , alignment: Alignment.center,color: Color.fromARGB(100, 0, 148, 198)),clipper:CustomClipPath() ,))
              ),
             Expanded(child: GridView( padding: EdgeInsets.fromLTRB(20, 40, 20, 100),gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 40,mainAxisSpacing: 40, mainAxisExtent: 115), children: [
               for ( final activity in activities)
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       selectedIndex=activity["id"];
                     });
                   } ,
                   child:Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[
                     Container( padding: EdgeInsets.all(15), width: double.infinity, decoration: BoxDecoration(border: Border.all(width: 2,color:  selectedIndex==activity["id"]? Colors.lightBlueAccent: Colors.white),shape: BoxShape.circle, color: Colors.white ),    child: Image.asset(activity["path"],fit: BoxFit.cover,)),
                     Text(activity["title"])
                   ]))



             ]),),


            ],

          ),
            Align(
              alignment: Alignment.bottomCenter,
                child : Container(width: double.infinity , height: 100 , padding: EdgeInsets.all(25),child:FloatingActionButton(onPressed: (){
                  Navigator.pushNamed(context, "/home");
                },child: Container( width:double.infinity,height: double.infinity,decoration: BoxDecoration(color:Color.fromRGBO(0, 0, 34, 1), borderRadius: BorderRadius.circular(15)),  child: Center(child: Text("Get Started", textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color:Colors.white))))))
              )

  ]

          )



      ),
    );
  }
}



class CustomClipPath extends CustomClipper<Path> {
  var radius=5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}



