import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';
import 'package:shoe_app/styles/styles.dart';

class BoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        boxMethod('https://blend.b-cdn.net/wp-content/uploads/2015/05/Blend-footer-social-icon-Facebook.png', ButtonColor.ternaryColor),
        boxMethod('https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1',ButtonColor.boxColor)
      ],
    );
  }

  boxMethod(String image,Color color) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      height: 80,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(color: ButtonColor.secondaryColor),
          borderRadius: ButtonBorder.secondaryContainer,
          color:color,
          image: DecorationImage(
            image: NetworkImage(image
                ),
          )),
    );
  }
}
