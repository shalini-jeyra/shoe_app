import 'package:flutter/material.dart';
import 'package:shoe_app/pages/signup_page/signup_page_components/signup_page_components.dart';
class RaisedButtonSignupWidget extends StatelessWidget {
  const RaisedButtonSignupWidget({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required String email,
    @required String phoneNumber,
    @required String password,
  }) : _formKey = formKey, _email = email, _phoneNumber = phoneNumber, _password = password, super(key: key);

  final GlobalKey<FormState> _formKey;
  final String _email;
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
          child: Text('Sign Up',style: TextFonts.secondaryText,),
          onPressed: () async{
            final form = _formKey.currentState;
            form.save();
            if (form.validate()) {
              print("$_email $_phoneNumber $_password");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InitialPage()));
            } else
              print('fill all details');
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
