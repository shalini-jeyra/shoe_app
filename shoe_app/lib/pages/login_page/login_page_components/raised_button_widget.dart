import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class RaisedButtonWidget extends StatelessWidget {
  const RaisedButtonWidget({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required String phoneNumber,
    @required String password,
  }) : _formKey = formKey, _phoneNumber = phoneNumber, _password = password, super(key: key);

  final GlobalKey<FormState> _formKey;
  final String _phoneNumber;
  final String _password;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ButtonTheme(
        minWidth: double.infinity,
        height: 60,
        child: RaisedButton(
          child: Text('Login', style: TextFonts.secondaryText,),
          onPressed: () {
            final form = _formKey.currentState;
            form.save();
            if (form.validate()) {
              print("$_phoneNumber $_password");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InitialPage()));
            } else
              print('invalid email or password');
          },
          shape: RoundedRectangleBorder(
            borderRadius: ButtonBorder.primaryContainer,
          ),
          color: ButtonColor.secondaryColor,
        ),
      ),
    );
  }
}