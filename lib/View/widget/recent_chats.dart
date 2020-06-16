import 'dart:convert';

import 'package:appchatdemo/Model/Global.dart';
import 'package:appchatdemo/Model/ListUserResponse.dart';
import 'package:appchatdemo/Model/domain.dart';
import 'package:appchatdemo/Model/message_model.dart';
import 'package:appchatdemo/View/Screens/ChatUserScreen.dart';
import 'package:appchatdemo/View/Screens/LoginScreen.dart';
import 'package:appchatdemo/View/Screens/chat_screendefault.dart';
import 'package:appchatdemo/View/Screens/ChatScreen.dart';
import 'package:appchatdemo/View/Screens/loginScreendefault.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
///-----***Created by Dat Tran***------///


class RecentChats extends StatefulWidget {


  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  Future<List<ListUserResponse>> futureListUserResponse;
  @override
  void initState() {
    super.initState();
    futureListUserResponse = fetchListUserRes(http.Client());
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: FutureBuilder<List<ListUserResponse>>(
            future: fetchListUserRes(http.Client()),
          builder: (context, snapshot){
            return snapshot.hasData ? ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];


                return GestureDetector(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()))
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
                    padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage(snapshot.data[index].imageUrl),
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  snapshot.data[index].username,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  child: Text(
                                    chat.text,
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              chat.time,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            chat.unread
                                ? Container(
                              width: 40.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'NEW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                                : Text(''),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ) : Center(child: CircularProgressIndicator());
          }
        ),
      ),
    );
  }
}

_loginBtnTap(String username) async {
  if (username.isEmpty) {
  return;
  }

  ListUserResponse me = G.dummyUsers[0];
  if (username.toString() != 'a') {

  me = G.dummyUsers[1];
  }

  G.loggedInUser = me;
  BuildContext context;
  Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()));

//                  => Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                      builder: (_) => ChatScreen(
//                        user: chat.sender,
//                      ),
//                    ),
//                  ),
}


