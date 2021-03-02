import 'package:flutter/material.dart';
import 'package:shoe_app/pages/home_page/home_page_components/home_page_components.dart';

class HomePageWidget extends StatelessWidget {
  final String image;
  final String text;
  const HomePageWidget({
   this.text,this.image
  }) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                    image),
                fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          child: Text(
            text,
            style: TextFonts.primaryText,
          ),
        ),
      ],
    );
  }
}
