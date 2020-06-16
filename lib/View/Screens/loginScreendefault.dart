
import 'dart:convert';

import 'package:appchatdemo/Model/ListUserResponse.dart';
import 'package:appchatdemo/Model/UserLogin.dart';
import 'package:appchatdemo/Model/domain.dart';
import 'package:appchatdemo/View/Screens/HomePage.dart';
import 'package:appchatdemo/View/widget/LoginScreenWidget/LoginScreen-BtnSignIn.dart';
import 'package:appchatdemo/blocs/login_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
///-----***Created by Dat Tran***------///




class LoginScreenDefault extends StatefulWidget {
  LoginScreenDefault({Key key}) : super(key: key);
  @override
  _LoginScreenDefaultState createState() => _LoginScreenDefaultState();
}

class _LoginScreenDefaultState extends State<LoginScreenDefault> {


  LoginBloc bloc = new LoginBloc();
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();

  Future<UserLogin> _futurUserLogin;
  String msg = "Tên Đăng Nhập";
  bool _showPass = true;


  Future getData() async{
    http.Response response = await http.get(SERVER_LOGIN_NAME);
    debugPrint(response.body);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors:[Colors.blueGrey, Colors.lightBlueAccent],
          )
        ),
        child: ListView(
          children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 50.0, right: 50.0),
                    child: Container(
                        height: 80.0,
                        width: MediaQuery.of(context).size.width,

                        child: StreamBuilder(
                          stream: bloc.userStream,
                          builder: (context,snapshot)=>
                              TextField(
                                controller: _userController,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                    icon: Icon(Icons.account_circle),

                                    border: InputBorder.none,
                                    fillColor: Colors.lightBlueAccent,
                                    labelText: msg,
                                    errorText: snapshot.hasError ? snapshot.error : null,
                                    labelStyle: TextStyle(
                                      color: Colors.white70,
                                    )
                                ),
                              ),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, left: 50.0, right: 50.0),
                    child: Container(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width,
                      child: StreamBuilder(
                        stream: bloc.passStream,
                        builder: (context, snapshot)=>
                            Stack(
                              alignment: AlignmentDirectional.centerEnd,
                              children: [
                                TextField(
                                  controller: _passController,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  obscureText: _showPass,
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.lock),
                                      border: InputBorder.none,
                                      labelText: 'Mật khẩu',
                                      errorText: snapshot.hasError?snapshot.error:null,
                                      labelStyle: TextStyle(
                                        color: Colors.white70,
                                      )
                                  ),

                                ),
                                GestureDetector(
                                  onTap: isShowPass,
                                  child: Icon(
                                    _showPass ? Icons.remove_red_eye : Icons.panorama_fish_eye,
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, right: 50.0, left:200.0 ),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      height: 50.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue[300],
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                5.0, //horizontal, move right 10
                                5.0, //vertical, move down 10
                              )
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: FlatButton(
                        onPressed: OnSignInClicked,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Đăng nhập",
                              style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  ButtonSignIn(),

                ],
              )
          ],
        ),
      ),
    );
  }
  void isShowPass(){
    setState(() {
      _showPass = !_showPass;
    });
  }
  void OnSignInClicked(){

      http.post(
        SERVER_LOGIN_NAME,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': _userController.text,
          'password':_passController.text
        }),
      ).then((response){
        if(response.statusCode == 200) {

          if(bloc.isValidInfo(_userController.text, _passController.text)){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage(username: _userController.text,)));
          }

        }
        else{
          Fluttertoast.showToast(toastLength: Toast.LENGTH_SHORT, msg: "Ten Dang Nhap hoac mat khau khong chinh xac");

          _passController.clear();
        }
        print(response.statusCode);
      });
      debugPrint(_userController.text+"  " +_passController.text  );



  }

}


