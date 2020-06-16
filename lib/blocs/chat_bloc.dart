import 'dart:async';
///-----***Created by Dat Tran***------///

class chatBloc{
  StreamController<String> _textFieldCtrl = StreamController<String>();
  StreamController<String> _submitBtnCtrl = StreamController<String>();
  StreamController<List<String>> _chatItemsCrrl = StreamController<List<String>>();

  dispose(){
    _textFieldCtrl.close();
    _submitBtnCtrl.close();
    _chatItemsCrrl.close();
  }
}