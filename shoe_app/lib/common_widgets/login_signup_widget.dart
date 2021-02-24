import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class LoginSignupWidget extends StatefulWidget {
  final String text;
  final bool condition;
  final TextInputType textInputType;
  LoginSignupWidget({this.text,this.textInputType,this.condition});
  @override
  _LoginSignupWidgetState createState() => _LoginSignupWidgetState();
}

class _LoginSignupWidgetState extends State<LoginSignupWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: ButtonBorder.primaryContainer),
          labelText:widget.text,
        ),
        cursorColor: Colors.black,
        keyboardType: widget.textInputType,
        obscureText: widget.condition,
      ),
    );
  }
}

