import 'package:flutter/material.dart';
class PasswordInputAgain extends StatefulWidget {
  @override
  _PasswordInputAgainState createState() => _PasswordInputAgainState();
}

class _PasswordInputAgainState extends State<PasswordInputAgain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
      child: Container(
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Nhập lại mật khẩu',
            labelStyle: TextStyle(
              color: Colors.white70,
            )
          ),
        ),
      ),
    );
  }
}

