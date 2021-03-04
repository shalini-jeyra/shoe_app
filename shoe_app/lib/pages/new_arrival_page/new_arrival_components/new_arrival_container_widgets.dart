import 'package:flutter/material.dart';
import 'package:shoe_app/pages/add_cart_page/add_cart_page.dart';
import 'package:shoe_app/pages/new_arrival_page/new_arrival_components/new_arrival_components.dart';

class NewArrivalContainerWidget extends StatelessWidget {
  final String image;
  final String text;
  final String priceText;
  NewArrivalContainerWidget({this.image, this.text, this.priceText});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(image)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 140,
            child: Text(text),
          ),
          Text(
            priceText,
            style: TextFonts.ternaryText,
          )
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (buildContext) => AddCartPage(),
          ),
        );
      },
    );
  }
}
