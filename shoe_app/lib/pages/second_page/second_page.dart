import 'package:flutter/material.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';
import 'package:shoe_app/pages/third_page/third_page.dart';

class SecondPage extends StatelessWidget {
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
                      'https://cdnimg.webstaurantstore.com/images/products/large/446023/1725580.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Get your dream shoes',
                  style: TextFonts.primaryText,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Let\'s add them to your cart',
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
                      builder: (buildContext) => InitialPage(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: ButtonBorder.primaryContainer,
                ),
              ),
              RaisedButton(
                child: Text(
                  'NEXT',
                  style: TextFonts.secondaryText,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (buildContext) => ThirdPage(),
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
