import 'package:appchatdemo/View/Screens/loginScreendefault.dart';
import 'package:flutter/material.dart';


class UserName extends StatefulWidget  {
  @override
  _UserNameState createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 50.0, right: 50.0),
      child: Container(
        height: 60.0,
        width: MediaQuery.of(context).size.width,

        child: StreamBuilder(
            builder: (context,snapshot)=>
                TextField(
                  autofocus: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),

                      border: InputBorder.none,
                      fillColor: Colors.lightBlueAccent,
                      labelText: 'Tên đăng nhập',
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      )
                  ),
                ),
          )
      ),
    );
  }
}
