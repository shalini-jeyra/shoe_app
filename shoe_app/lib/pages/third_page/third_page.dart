import 'package:flutter/material.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';
import 'package:shoe_app/pages/second_page/second_page.dart';
import 'package:shoe_app/pages/start_page/start_page.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/happy-long-haired-woman-smiling-after-shopping-portrait-pleased-white-girl-with-paper-bags_197531-8240.jpg?size=626&ext=jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Pay and wait for your dream',
                  style: TextFonts.primaryText,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                child: Text(
                  'BACK',
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (buildContext) => SecondPage(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: ButtonBorder.primaryContainer,
                ),
              ),
              RaisedButton(
                child: Text(
                  'START',
                  style: TextFonts.secondaryText,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (buildContext) => StartPage(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: ButtonBorder.primaryContainer,
                ),
                color: ButtonColor.ternaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
