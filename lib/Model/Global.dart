import 'dart:convert';
import 'dart:math';

import 'package:appchatdemo/socket/socketUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ListUserResponse.dart';
import 'package:http/http.dart' as http;

import 'domain.dart';
///-----***Created by Dat Tran***------///

class G {
  // Socket
  static SocketUtils socketUtils;
  static List<ListUserResponse> dummyUsers;

  // Logged In User
  static ListUserResponse loggedInUser;

  // Single Chat - To Chat User
  static ListUserResponse toChatUser;

  static initSocket() {
    if (null == socketUtils) {
      socketUtils = SocketUtils();
    }
  }
  Future<List<ListUserResponse>> fetchUsers(http.Client client) async {
    final response = await client.get(SERVER_LIST_USER);
    Fluttertoast.showToast(msg: "in here",toastLength: Toast.LENGTH_SHORT);
    // Use the compute function to run parsePhotos in a separate isolate.
    return compute(parseUsers, response.body);
  }
  List<ListUserResponse> parseUsers(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<ListUserResponse>((json) => ListUserResponse.fromJson(json)).toList();
  }

  static void initDummyUsers() async {
    dummyUsers = List<ListUserResponse>();
    Future<List<ListUserResponse>> futureListUserResponse = fetchListUserRes(http.Client());
    dummyUsers = await futureListUserResponse;

//    Fluttertoast.showToast(msg: addUser.id.toString(),toastLength: Toast.LENGTH_LONG);
//    ListUserResponse userA = new ListUserResponse(id: 1000, username: 'A', email: 'testa@gmail.com',imageUrl: null,password: "111111111");
//    ListUserResponse userE = new ListUserResponse(id: 1, username: 'user11', email: 'testa@gmail.com',imageUrl: null,password: "111111111");
//    ListUserResponse userB = new ListUserResponse(id: 1001, username: 'B', email: 'testb@gmail.com',imageUrl: null,password: "111111111");
//    ListUserResponse userC = new ListUserResponse(id: 1002, username: 'C', email: 'testc@gmail.com',imageUrl: null,password: "111111111");
//    ListUserResponse userD = new ListUserResponse(id: 1003, username: 'D', email: 'testd@gmail.com',imageUrl: null,password: "111111111");
//    dummyUsers.add(addUser);
//    dummyUsers.add(userA);
//    dummyUsers.add(userE);
//    dummyUsers.add(userB);
//    dummyUsers.add(userC);
//    dummyUsers.add(userD);
    debugPrint(dummyUsers.length.toString());

  }

  static List<ListUserResponse> getUsersFor(ListUserResponse user) {
    List<ListUserResponse> filteredUsers = dummyUsers
        .where((u) => (!u.username.toLowerCase().contains(user.username.toLowerCase())))
        .toList();
    return filteredUsers;
  }
}
