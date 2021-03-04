import 'package:flutter/material.dart';
import 'package:shoe_app/pages/new_arrival_page/new_arrival_components/new_arrival_components.dart';

class NewArrivalPage extends StatefulWidget {
  @override
  _NewArrivalPageState createState() => _NewArrivalPageState();
}

class _NewArrivalPageState extends State<NewArrivalPage> {
  int colourValue=0;
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primaryColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.primaryColor,
        elevation: 0,
        title: Text('New arrivals', style: HeaderFonts.primaryText),
        actions: [Icon(Icons.add_shopping_cart)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                child: DropdownButton(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  items: [
                    DropdownMenuItem(
                      child: Text('Category'),
                      value: 1,
                    )
                  ],
                ),
              ),

              Container(
                child: DropdownButton(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  items: [
                    DropdownMenuItem(
                      child: Text('Colour'),
                      value: 1,
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NewArrivalContainerWidget(
                image:
                    'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9094123f-f624-4f32-9df8-9093bcc4c0ee/flyby-mid-basketball-shoe-Q2Gp58.jpg',text:'Nike AirForce 1LVB8 Unity',priceText: '299 \$ ',
              ),
              NewArrivalContainerWidget(
                image:'https://d3pnpe87i1fkwu.cloudfront.net/IMG/under-armour-curry-7-3021258_100_2048x2048.png',text:'Under Armour UA Curry 7',priceText: '140 \$ ',
              )
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NewArrivalContainerWidget(
                image:
                    'https://assets.reebok.com/images/w_600,f_auto,q_auto/20aa718e4cc34f51a0f8ab99000ba2fd_9366/Chromat_Zig_Kinetica_Shoes_White_FX2460.jpg',text:'Reebok Chromat Zig Kinetica',priceText: '621 \$ ',
              ),
              NewArrivalContainerWidget(
                image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJEZmExAO6w23YC_jvA8cF4REmpqS10c8eDw&usqp=CAU',text:'Adidas Superstar Original',priceText: '749 \$ ',
              )
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NewArrivalContainerWidget(
                image:
                    'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9094123f-f624-4f32-9df8-9093bcc4c0ee/flyby-mid-basketball-shoe-Q2Gp58.jpg',text:'Nike AirForce 1LVB8 Unity',priceText: '299 \$ ',
              ),
              NewArrivalContainerWidget(
                image:'https://d3pnpe87i1fkwu.cloudfront.net/IMG/under-armour-curry-7-3021258_100_2048x2048.png',text:'Under Armour UA Curry 7',priceText: '140 \$ ',
              )
            ],
          )
        ],
      ),
    );
  }
}
