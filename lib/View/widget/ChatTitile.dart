import 'package:appchatdemo/Model/ListUserResponse.dart';
import 'package:appchatdemo/View/Screens/ChatScreen.dart';
import 'package:appchatdemo/View/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
///-----***Created by Dat Tran***------///


class ChatTitle extends StatelessWidget {
  //
  const ChatTitle({
    Key key,
    @required this.chatUser,
    @required this.userOnlineStatus,
  }) : super(key: key);

  final ListUserResponse chatUser;
  final UserOnlineStatus userOnlineStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(chatUser.username),
          Text(
            _getStatusText(),
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }

  _getStatusText() {
    if (userOnlineStatus == UserOnlineStatus.connecting) {
      return 'connecting...';
    }
    if (userOnlineStatus == UserOnlineStatus.online) {
      return 'online';
    }
    if (userOnlineStatus == UserOnlineStatus.not_online) {
      return 'not online';
    }
  }
}