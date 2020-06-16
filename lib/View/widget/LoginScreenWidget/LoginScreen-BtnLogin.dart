import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, right: 50.0, left:200.0 ),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue[300],
              blurRadius: 10.0,
              spreadRadius: 1.0,
              offset: Offset(
                5.0, //horizontal, move right 10
                5.0, //vertical, move down 10
              )
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FlatButton(
          onPressed: (){
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Đăng nhập",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
