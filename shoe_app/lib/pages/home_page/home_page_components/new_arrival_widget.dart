import 'package:flutter/material.dart';
import 'package:shoe_app/pages/home_page/home_page_components/home_page_components.dart';

class NewArrivalWidget extends StatelessWidget {
  const NewArrivalWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          HomePageWidget(image: 'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5e286536ec55d03ee881f77a-ferrari-partner-puma-cover-mob?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=768&height=0',text: 'Puma',),
          SizedBox(width: 10,),
          HomePageWidget(image:
            'https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg',
        text: 'Adidas'),
          SizedBox(width: 10,),
          HomePageWidget(image:
          'https://www.bestdesigns.co/uploads/inspiration_images/4375/_inspiration_images_683_410__1512076803_93_Nike.png',
      text: 'Nike',),
          SizedBox(width: 10,),
          HomePageWidget(image:
          'https://logos-download.com/wp-content/uploads/2016/02/New_Balance_black_logo.png',
      text: 'New Balance',),
          SizedBox(width: 10,),
          HomePageWidget(image:
          'https://www.pngkit.com/png/detail/19-190875_asics-logo-ascics-logo.png',
      text: 'Asics',),
          SizedBox(width: 10,),
          HomePageWidget(image:
            'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/d1d98eb9-dbfb-4a66-94a4-80e47770d3c9',
        text: 'Under armour'),
          SizedBox(width: 10,),
          HomePageWidget(image:
          'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5e286536ec55d03ee881f77a-ferrari-partner-puma-cover-mob?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=768&height=0',
      text: 'Puma'),
          SizedBox(width: 10,),
          HomePageWidget(image:
            'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/d1d98eb9-dbfb-4a66-94a4-80e47770d3c9',
        text: 'Under armour'),
          SizedBox(width: 10,),
          HomePageWidget( image:
            'https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg',
        text: 'Adidas'),
          
        ],
      ),
    );
  }
}
