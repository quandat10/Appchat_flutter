import 'package:appchatdemo/View/Screens/ChatScreen.dart';
import 'package:appchatdemo/View/Screens/ChatUserScreen.dart';
import 'package:appchatdemo/View/Screens/LoginScreen.dart';
import 'package:appchatdemo/View/Screens/loginScreendefault.dart';
///-----***Created by Dat Tran***------///


class Routes {
  static routes() {
    return {
      LoginScreen.ROUTE_ID: (context) => LoginScreen(),
      ChatUsersScreen.ROUTE_ID: (context) => LoginScreen(),
      ChatScreen.ROUTE_ID: (context) => ChatScreen(),
    };
  }

  static initScreen() {
    return LoginScreen.ROUTE_ID;
  }
}
