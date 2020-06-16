import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalText extends StatefulWidget {
  @override
  _VerticalTextState createState() => _VerticalTextState();
}

class _VerticalTextState extends State<VerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 10.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(
          "Đăng nhập",
          style: TextStyle(
            color: Colors.white,
            fontSize: 38.00,
            fontWeight: FontWeight.w900
          ),
        ),
      ),
    );
  }
}
