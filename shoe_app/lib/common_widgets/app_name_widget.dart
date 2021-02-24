import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class AppNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,      
        children: [
          Text('RUNHE', style: HeaderFonts.ternaryText),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://previews.123rf.com/images/chisnikov/chisnikov1202/chisnikov120200003/12191376-outline-shoes.jpg'))),
          ),
        ],
      ),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('WELCOME', style: HeaderFonts.secondaryText),
              SizedBox(
                      height: 5.0,
                      width: 50.0,
                      child:Divider(
                        color:TextColor.primaryColor,
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}