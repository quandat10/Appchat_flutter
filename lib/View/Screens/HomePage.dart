

import 'package:appchatdemo/Model/Global.dart';
import 'package:appchatdemo/Model/ListUserResponse.dart';
import 'package:appchatdemo/View/Screens/ChatScreen.dart';
import 'package:appchatdemo/View/Screens/ChatUserScreen.dart';
import 'package:appchatdemo/View/Screens/LoginScreen.dart';
import 'package:appchatdemo/View/widget/bottom_navy_bar.dart';
import 'package:appchatdemo/View/widget/nearly_user.dart';
import 'package:appchatdemo/View/widget/recent_chats.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'chat_screendefault.dart';
///-----***Created by Dat Tran***------///

class HomePage extends StatefulWidget {

  final String username;
  HomePage({this.username}) : super();
  @override
  _HomePage createState() => _HomePage();
}
int _currentIndex = 0;

class _HomePage extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    G.initDummyUsers();
    debugPrint("username : "+widget.username);
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 8,
          curve: Curves.easeInBack,
          onItemSelected: (index) => setState(() {
            _currentIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              activeColor: Colors.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text(
                'Mess',
              ),
              activeColor: Colors.pink,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent,
              textAlign: TextAlign.center,
            ),

            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue,
              textAlign: TextAlign.center,
            ),
          ],
        ),

        body: _currentIndex == 0 ? NearlyUser() : _ListChat(widget.username)
    );
  }

}
//class indexView extends StatelessWidget {
//  final String username;
//  @override
//  Widget build(BuildContext context) {
//    if(_currentIndex == 0){
//      return NearlyUser();
//    }
//    else if(_currentIndex == 1) {
//      return _ListChat();
//    }else if (_currentIndex == 2){
//    }else if (_currentIndex == 3){
//
//    }
//    return Container();
//  }
//
//}
Widget _ListChat(String username)  {
  if (username.isEmpty) {
    debugPrint("here:"+username);
    return null;
  }
  ListUserResponse me = new ListUserResponse();

  for( var i = 0; i < G.dummyUsers.length; i++){
    if(username == G.dummyUsers[i].username){
      me = G.dummyUsers[i];
    }
  }
  debugPrint("length dummyUsers : " + me.toString());


//  ListUserResponse me = G.dummyUsers[0];
//  if (username != 'a') {
//    debugPrint("here1:"+username);
//
//    me = G.dummyUsers[1];
//  }

  G.loggedInUser = me;

  return ChatUsersScreen();
}







