import 'package:flutter/material.dart';
import 'package:shoe_app/pages/home_page/home_page.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';
import 'package:shoe_app/pages/start_page/start_page_components/start_page_widget.dart';

//startpage changes
class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 250,
              child: Text(
                'Get started choose your brands ',
                style: HeaderFonts.primaryText,
              ),
            ),
            StartPageWidget(
              image:
                  'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5e286536ec55d03ee881f77a-ferrari-partner-puma-cover-mob?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=768&height=0',
              text: 'Puma',
            ),
            StartPageWidget(
                image:
                    'https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg',
                text: 'Adidas'),
            StartPageWidget(
              image:
                  'https://www.bestdesigns.co/uploads/inspiration_images/4375/_inspiration_images_683_410__1512076803_93_Nike.png',
              text: 'Nike',
            ),
            StartPageWidget(
              image:
                  'https://logos-download.com/wp-content/uploads/2016/02/New_Balance_black_logo.png',
              text: 'New Balance',
            ),
            StartPageWidget(
              image:
                  'https://www.pngkit.com/png/detail/19-190875_asics-logo-ascics-logo.png',
              text: 'Asics',
            ),
            StartPageWidget(
                image:
                    'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/d1d98eb9-dbfb-4a66-94a4-80e47770d3c9',
                text: 'Under armour'),
            StartPageWidget(
              image:
                  'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5e286536ec55d03ee881f77a-ferrari-partner-puma-cover-mob?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=768&height=0',
              text: 'Puma',
            ),
            StartPageWidget(
                image:
                    'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/d1d98eb9-dbfb-4a66-94a4-80e47770d3c9',
                text: 'Under armour'),
            StartPageWidget(
                image:
                    'https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg',
                text: 'Adidas'),
            Align(
              alignment: Alignment.center,
              child: TextButton(child:Text('CONTINUE'),onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (buildContext)=>HomePage()));
              },),
            )
          ],
        ),
      ),
    );
  }
}
