import 'dart:convert';
import 'package:http/http.dart' as http;
///-----***Created by Dat Tran***------///

Future<http.Response> createUserLogin(String username, String password) {
  return http.post(
    'http://localhost:3000/api/login',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': 'user1',
      'password':'1'
    }),
  );
}