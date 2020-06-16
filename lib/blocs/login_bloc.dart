import 'dart:async';

import 'package:appchatdemo/validator/validation.dart';
///-----***Created by Dat Tran***------///

class LoginBloc {
  StreamController _userController = new StreamController();
  StreamController _passController = new StreamController();

  Stream get userStream => _userController.stream;
  Stream get passStream => _passController.stream;

  bool isValidInfo(String username, password){
    if(!validation.isValidUser(username)){
      _userController.sink.addError("Tên đăng nhập không hợp lệ");
      return false;
    }
    _userController.sink.add("Tên đăng nhập hợp lệ");

    if(!validation.isValidPass(password)){
      _passController.sink.addError("Mật khẩu phải có ít nhất 6 kí tự ");
      return false;
    }
    _passController.sink.add("Mật khẩu hợp lệ");
    return true;

  }


  void dispose(){
    _userController.close();
    _passController.close();
  }
}