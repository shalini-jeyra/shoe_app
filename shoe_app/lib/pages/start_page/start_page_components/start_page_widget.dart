import 'package:flutter/material.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class StartPageWidget extends StatefulWidget {
  final String image;
  final String text;
  StartPageWidget({this.image,this.text});
  @override
  _StartPageWidgetState createState() => _StartPageWidgetState();
}

class _StartPageWidgetState extends State<StartPageWidget> {
   bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(widget.image           ),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  child: Text(
                    widget.text,
                    style: TextFonts.primaryText,
                  ),
                ),                
                Spacer(),
                raisedButtonWidget()
              ],
                
            );
    
  }

raisedButtonWidget() {
    return RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),
              child: _hasBeenPressed ? Text('UNFOLLOW') : Text('FOLLOW'),
              textColor: _hasBeenPressed
                  ? ButtonColor.boxColor
                  : TextColor.primaryColor,
              color:
                  _hasBeenPressed ? ButtonColor.ternaryColor : Colors.white,
              onPressed: () {
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                });
              },
              );
  }
}

