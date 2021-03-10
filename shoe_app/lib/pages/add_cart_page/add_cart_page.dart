import 'package:flutter/material.dart';
import 'package:shoe_app/pages/add_cart_page/add_cart_components/add_cart_components.dart';

class AddCartPage extends StatefulWidget {
  @override
  _AddCartPageState createState() => _AddCartPageState();
}
class _AddCartPageState extends State<AddCartPage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primaryColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.primaryColor,
        elevation: 0,
        title:
            Text('Adidas Superstar\nOriginals', style: HeaderFonts.primaryText),
        actions: [
          Icon(Icons.add_shopping_cart),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJEZmExAO6w23YC_jvA8cF4REmpqS10c8eDw&usqp=CAU'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Adidas Superstar Originals', style: TextFonts.sentenceText),
              Text('749 \$'),
            ],
          ),
          Text(
              'Walk past \'em in your shell toes. An icon for 50\n years and counting the adidas Superstar Shoe \n have graced the feet of pro prayers. hip hop \n heavyweights and style-savvy A-listers.',
              style: TextFonts.primaryText),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Color', style: TextFonts.sentenceText),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Container(
                  child: DropdownButton(
                    value: _value,
                    onChanged: (value) {
                      setState(
                        () {
                          _value = value;
                        },
                      );
                    },
                    items: [
                      DropdownMenuItem(
                        child: TextButton(
                          child: Text('Size'),
                          onPressed: () {
                            displayModalBottomSheet(context);
                          },
                        ),
                        value: 1,
                      )
                    ],
                  ),
                ),
                onTap: () {},
              ),
              RaisedButton(
                child: Text(
                  'ADD TO CART',
                  style: TextFonts.secondaryText,
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: ButtonBorder.primaryContainer,
                ),
                color: ButtonColor.ternaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
