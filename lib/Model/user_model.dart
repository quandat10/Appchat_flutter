import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'domain.dart';
///-----***Created by Dat Tran***------///

class User {
  final int id;
  final String username;
  final String password;
  final String imageUrl;
  final int status;

  User({
    this.id,
    this.username,
    this.imageUrl,
    this.status,
    this.password
  });

  factory User.fromJson(Map<String, dynamic>json){
    return User(
      id:json['id'],
      username: json['username'],
      password:json['password'],
      status: json['status'],
      imageUrl: json['imageUrl']
    );
  }
}

Future<List<User>> getData() async{
  http.Response response = await http.get(SERVER_LIST_USER);
  if(response.statusCode == 200){
    debugPrint(response.body);
    Map<String, dynamic> mapResponse = json.decode(response.body);
  }
}
