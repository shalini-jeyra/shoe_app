import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class RaisedButtonWidget extends StatefulWidget {
  final String text;
  final TextEditingController loginController;
  RaisedButtonWidget({this.text, this.loginController});
  @override
  _RaisedButtonWidgetState createState() => _RaisedButtonWidgetState();
}

class _RaisedButtonWidgetState extends State<RaisedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ButtonTheme(
        minWidth: double.infinity,
        height: 60,
        child: RaisedButton(
          child: Text(
            widget.text,
            style: TextFonts.secondaryText,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (buildContext) => InitialPage(),
              ),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: ButtonBorder.primaryContainer,
          ),
          color: ButtonColor.secondaryColor,
        ),
      ),
    );
  }
}
