import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'Global.dart';
import 'domain.dart';
///-----***Created by Dat Tran***------///

class ListUserResponse {
  final int id;
  final String username;
  final String password;
  final int status;
  final String imageUrl;
  final String email;

  ListUserResponse({this.username, this.password, this.status, this.id, this.imageUrl,this.email});
  factory ListUserResponse.fromJson(Map<String, dynamic>json){
    return ListUserResponse(
      username: json['username'],
      password: json['password'],
      id: json['id'],
      status: json['status'],
      imageUrl: json['imageUrl'],
      email: json['email']
    );
  }
  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'email': email,
    'password':password,
    'status':status,
    'imageUrl':imageUrl
  };
}
Future<List<ListUserResponse>> fetchListUserRes(http.Client client) async {
  final response = await http.get(SERVER_LIST_USER);
  debugPrint(response.body);
  if (response.statusCode == 200) {
    Map<String, dynamic> mapResonse = json.decode(response.body);
    if(mapResonse['status']=='ok'){
      final users = mapResonse['data'].cast<Map<String, dynamic>>();
      final listOfUsers = await users.map<ListUserResponse>((json){
        debugPrint(ListUserResponse.fromJson(json).username.toString());
//        G.initDummyUsers(ListUserResponse.fromJson(json));
//        G.dummyUsers = List<ListUserResponse>();
//        G.dummyUsers.add(ListUserResponse.fromJson(json));
        return ListUserResponse.fromJson(json);

      }).toList();
//      for(var i = 0; i < listOfUsers.toString().length;i++){
//        G.initDummyUsers(listOfUsers[i]);
//      }
      return listOfUsers;

    }
    else{
      return [];
    }

    // If the server did return a 200 OK response,
    // then parse the JSON.

//    return ListUserResponse.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load ListUser');
  }
}





