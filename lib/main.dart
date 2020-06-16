import 'package:appchatdemo/View/Screens/LoginScreen.dart';
import 'package:appchatdemo/View/Screens/loginScreendefault.dart';
import 'package:appchatdemo/View/Screens/ChatScreen.dart';
import 'package:appchatdemo/View/widget/itemUser.dart';
import 'package:flutter/material.dart';
import 'View/Screens/HomePage.dart';
void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat_App_demo",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
//      home: LoginScreen(),
    home:LoginScreenDefault()
    );
  }
}