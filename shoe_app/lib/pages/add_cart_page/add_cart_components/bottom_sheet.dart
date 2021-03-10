import 'package:flutter/material.dart';
import 'package:shoe_app/pages/add_cart_page/add_cart_components/add_cart_components.dart';
import 'package:shoe_app/pages/add_cart_page/add_cart_page.dart';
import 'package:shoe_app/pages/home_page/home_page_components/home_page_components.dart';

void displayModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30)),
      ),
      context: context,
      builder: (BuildContext buildContext) {
        List<String> text = [
          '7.5',
          '8',
          '8.5',
          '9',
          '10.5',
          '11',
          '11.5',
          '12',
          '12.5',
          '13'
        ];
        bool _hasBeenPressed = false;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Select a Size', style: TextFonts.sentenceText),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (buildContext) => AddCartPage(),
                      ),
                    );
                  },
                  color: ButtonColor.sizeColor,
                  child: Icon(Icons.close),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ],
            ),
            Container(
              child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true,
                  itemCount: text.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return RaisedButton(
                      color: _hasBeenPressed
                          ? ButtonColor.secondaryColor
                          : ButtonColor.sizeColor,
                      shape: CircleBorder(),
                      child: Text(text[index], style: TextFonts.ternaryText),
                      onPressed: () {},
                    );
                  }),
            ),
            RaisedButton(
              child: Text(
                'SELECT SIZE',
                style: TextFonts.secondaryText,
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: ButtonBorder.primaryContainer,
              ),
              color: ButtonColor.secondaryColor,
            ),
          ],
        );
      });
}
