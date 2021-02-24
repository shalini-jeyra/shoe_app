import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class BottomWidget extends StatelessWidget {
  final String text;
  final String text1;
  final Widget navigator;


  BottomWidget({this.text, this.text1,this.navigator});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        GestureDetector(
          child: Text(
            text1,
            style: TextFonts.ternaryText,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => navigator,
              ),
            );
          },
        ),
      ],
    );
  }
}
