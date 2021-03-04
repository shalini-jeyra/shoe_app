import 'package:flutter/material.dart';
import 'package:shoe_app/pages/home_page/home_page_components/home_page_components.dart';
import 'package:shoe_app/pages/new_arrival_page/new_arrival_page.dart';

//changes made in homepage
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primaryColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.primaryColor,
        elevation: 0,
        title: Container(
          decoration:
              BoxDecoration(borderRadius: ButtonBorder.secondaryContainer),
          child: Row(children: [
            Expanded(
              flex: 1,
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (textEditingController.text.isNotEmpty) {
                  print('just do it');
                } else {
                  print('dont do it');
                }
              },
              child: Container(
                child: Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
            )
          ]),
        ),
        actions: [Icon(Icons.add_shopping_cart)],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (buildContext) => NewArrivalPage(),
                    ),
                  );
                },
                child: Text('New arrivals', style: HeaderFonts.primaryText)),
            NewArrivalWidget(),
            Text('Shop by category', style: HeaderFonts.primaryText),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryWidget(
                  text: 'MEN',
                  image:
                      'https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/1280x1280/products/26902/248904/2019-Casual-Shoes-Men-Flat-Sneakers-Breathable-Fashion-Mesh-Mens-Trainers-Shoes-Summer-Sneakers-Men-Running__04818.1551090513.jpg?c=2?imbypass=on',
                ),
                CategoryWidget(
                    text: 'WOMEN',
                    image:
                        'https://i.pinimg.com/originals/ab/5a/6f/ab5a6f9869d2938d8abe5d39eab3ebea.jpg')
              ],
            ),
            Text('Sale', style: HeaderFonts.primaryText),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryWidget(
                  text: 'MEN',
                  image:
                      'https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/1280x1280/products/26902/248904/2019-Casual-Shoes-Men-Flat-Sneakers-Breathable-Fashion-Mesh-Mens-Trainers-Shoes-Summer-Sneakers-Men-Running__04818.1551090513.jpg?c=2?imbypass=on',
                ),
                CategoryWidget(
                    text: 'WOMEN',
                    image:
                        'https://i.pinimg.com/originals/ab/5a/6f/ab5a6f9869d2938d8abe5d39eab3ebea.jpg')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
