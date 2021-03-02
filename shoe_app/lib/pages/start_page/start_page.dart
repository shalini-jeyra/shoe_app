import 'package:flutter/material.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primaryColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.primaryColor,
        elevation: 0,
        title: Container(
          child: Text('Get started choose your brands '),
        ),
      ),
    );
  }
}
