import 'package:flutter/material.dart';
///-----***Created by Dat Tran***------///

class itemUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(5.0),
      height: 30.0,
      width: MediaQuery.of(context).size.width,
      child:new Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: new Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: new Image.asset("assets/avt.jpg"),
              
            ),
          ),
          Flexible(
            flex: 4,
            child: new Column(
              children: <Widget>[
                new Text("Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                ),),
                new Text("Describe",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                  ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
