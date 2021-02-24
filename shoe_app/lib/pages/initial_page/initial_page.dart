import 'package:flutter/material.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://play-lh.googleusercontent.com/mLvvgUXJVZeu-GbqWZfr8ug74V7d8Od9yU2AOvUUptiki9wIH-BJHataFTJI_J0TlQ'),
                fit: BoxFit.fill
                ),
                
              ),
            ),
            Container(child: Column(children: [
          Text(
              'Are your shoes worn out?',
              style: TextFonts.primaryText,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Looking for new ones',
              style: TextFonts.primaryText,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You\'ve come to the right place!',
              style: TextFonts.primaryText,
            ),
            ],),),
            
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                child: Text(
                  'NEXT',
                  style: TextFonts.secondaryText,
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: ButtonBorder.primaryContainer,
                ),
                color: ButtonColor.ternaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
