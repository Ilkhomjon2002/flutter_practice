
import 'dart:ui';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  Login({Key? key}) :super(key: key);


  @override
  State<Login> createState() => _Login();
}

final usernameController= TextEditingController();
final passwordController= TextEditingController();
class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {

    return

  Scaffold(
        body: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [

                 
                  Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Color.fromRGBO(0, 0, 34, 1)),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0,16.0,30.0,8.0),
                    child: TextField(  controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0,8.0,30.0,8.0),
                    child: TextField( controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, "/home");
                    }, child: Text("Submit"),style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states){
                      if(states.contains(MaterialState.pressed)){
                        return Color.fromRGBO(0, 0, 34, 0.7);
                      }
                      return Color.fromRGBO(0, 0, 34, 1);
                    })),),
                  )

                  ],),
          ),
      );



  }


}