import 'package:flutter/material.dart';
import 'package:shoe_app/pages/home_page/home_page.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';
import 'package:shoe_app/pages/start_page/start_page_components/start_page_widget.dart';

//startpage changes
class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView  (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                  ' Get started choose your \n brands ',
                  style: HeaderFonts.primaryText,
                ),
              
              StartPageWidget(),
              Align(
                alignment: Alignment.center,
                child: TextButton(child:Text('CONTINUE'),onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (buildContext)=>HomePage()));
                },),
              )
            ],
          ),
        ),
      ),
    );
  }
}
