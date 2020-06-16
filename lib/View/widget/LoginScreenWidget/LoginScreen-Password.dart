import 'package:flutter/material.dart';
class PasswordInput extends StatefulWidget {
  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
      child: Container(
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          onChanged: (text){
            password = text;

          },
          autofocus: true,
          style: TextStyle(
            color: Colors.white,
          ),
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            border: InputBorder.none,
            labelText: 'Mật khẩu',
            labelStyle: TextStyle(
              color: Colors.white70,
            )
          ),
        ),
      ),
    );
  }
}

