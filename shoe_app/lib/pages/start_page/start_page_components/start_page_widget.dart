import 'package:flutter/material.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class Devices {
  String name = '';
  bool _hasBeenPressed = false;
  Devices(this.name, this._hasBeenPressed);
}

class StartPageWidget extends StatefulWidget {
  @override
  _StartPageWidgetState createState() => _StartPageWidgetState();
}

class _StartPageWidgetState extends State<StartPageWidget> {
  int currenIndex;
  List<String> image = [
    'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5e286536ec55d03ee881f77a-ferrari-partner-puma-cover-mob?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=768&height=0',
    'https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg',
    'https://www.bestdesigns.co/uploads/inspiration_images/4375/_inspiration_images_683_410__1512076803_93_Nike.png',
    'https://logos-download.com/wp-content/uploads/2016/02/New_Balance_black_logo.png',
    'https://www.pngkit.com/png/detail/19-190875_asics-logo-ascics-logo.png',
    'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/d1d98eb9-dbfb-4a66-94a4-80e47770d3c9',
    'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5e286536ec55d03ee881f77a-ferrari-partner-puma-cover-mob?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=768&height=0',
    'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/d1d98eb9-dbfb-4a66-94a4-80e47770d3c9',
    'https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg'
  ];
  List<String> text = [
    'Puma',
    'Adidas',
    'Nike',
    'New Balance',
    'Asics',
    'Under armour',
    'Puma',
    'Under armour',
    'Adidas'
  ];

  var _allDevices = [
     Devices('Unfollow', true),
    Devices('Follow', false),   
    Devices('Follow', false),
    Devices('Unfollow', true),
    Devices('Unfollow', true),
    Devices('Follow', false),  
    Devices('Unfollow', true),  
    Devices('Follow', false),    
     Devices('Follow', false),
  ];

  Widget _getList(BuildContext context, int index) {
    return Card(
      elevation: 0,
      child: ListTile(
        tileColor: BackgroundColor.primaryColor,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                image[index],
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Container(
          child: Text(
            text[index],
            style: TextFonts.primaryText,
          ),
        ),
        trailing: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black),
          ),
          child: Text(_allDevices[index].name),
          textColor: _allDevices[index]._hasBeenPressed
              ? ButtonColor.boxColor
              : TextColor.primaryColor,
          color: _allDevices[index]._hasBeenPressed
              ? ButtonColor.ternaryColor
              : Colors.white,
          onPressed: () {
            setState(
              () {
                if (_allDevices[index]._hasBeenPressed == true) {
                  _allDevices[index]._hasBeenPressed = false;
                  
                } else {
                  _allDevices[index]._hasBeenPressed = true;
                }
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (context, index) {
        return _getList(context, index);
      },
    );
  }
}
