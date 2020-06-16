import 'dart:convert';
import 'package:http/http.dart' as http;

import 'domain.dart';
///-----***Created by Dat Tran***------///

class UserLogin {
  final String username;
  final String password;

  UserLogin({this.username, this.password});
  factory UserLogin.fromJson(Map<String, dynamic>json){
    return UserLogin(
      username: json['username'],
      password:json['password'],
    );
  }
}



