import 'package:flutter/material.dart';
import 'package:shoe_app/pages/home_page/home_page_components/home_page_components.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New arrivals', style: HeaderFonts.primaryText),
            NewArrivalWidget(),
            Text('Shop by category', style: HeaderFonts.primaryText),
          
          ],
        ),
      ),
    );
  }
}


