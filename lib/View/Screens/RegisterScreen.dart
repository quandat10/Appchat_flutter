import 'package:appchatdemo/View/widget/LoginScreenWidget/LoginScreen-Password.dart';
import 'package:appchatdemo/View/widget/LoginScreenWidget/LoginScreen-UserName.dart';
import 'package:appchatdemo/View/widget/LoginScreenWidget/LoginScreen-VertivalText.dart';
import 'package:appchatdemo/View/widget/RegisterScreen/Register-BtnLogin.dart';
import 'package:appchatdemo/View/widget/RegisterScreen/Register-BtnRegister.dart';
import 'package:appchatdemo/View/widget/RegisterScreen/Register-PasswordInputAgain.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
///-----***Created by Dat Tran***------///

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blueGrey, Colors.lightBlueAccent],
          )
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                UserName(),
                PasswordInput(),
                PasswordInputAgain(),
                Row(
                  children: <Widget>[
                    RegisterBtnLogin(),
                    BtnRegister()
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
