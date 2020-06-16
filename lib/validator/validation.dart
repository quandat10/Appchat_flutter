///-----***Created by Dat Tran***------///

class validation{
  static bool isValidUser(String user){
    return user != null  ;
  }
  static bool isValidPass(String pass){
    return pass != null && pass.length > 6;
  }
}