
import 'package:appchatdemo/View/widget/profile_user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
///-----***Created by Dat Tran***------///

class NearlyUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: GridView.builder(
          itemCount: 40,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new InkResponse(
                child: Padding(
                  padding: EdgeInsets.only(left:1.0,right: 1.0),
                  child:  Container(
                    child:   Stack(

                      alignment: Alignment.topRight,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 5.0,right: 5.0),
                          height: 20.0,
                          width: 20.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                        )
                      ],
                    ),

                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://placeimg.com/500/500/any")
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.redAccent,

                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UserProfilePage()));
                },
              ),
            );
          }
    ));
  }
}
