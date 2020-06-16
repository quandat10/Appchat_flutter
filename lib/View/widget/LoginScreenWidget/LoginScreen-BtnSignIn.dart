import 'package:appchatdemo/View/Screens/RegisterScreen.dart';
import 'package:flutter/material.dart';
class ButtonSignIn extends StatefulWidget {
  @override
  _ButtonSignInState createState() => _ButtonSignInState();
}

class _ButtonSignInState extends State<ButtonSignIn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30.0, left: 30.0),
      child: Container(
        alignment: Alignment.topRight,
        height: 20.0,
        child: Row(
          children: <Widget>[
            Text(
              'Bạn có tài khoản chưa ?',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
              },
              child: Text(
                'Đăng ký',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),

            )
          ],
        ),
      ),
    );
  }
}
