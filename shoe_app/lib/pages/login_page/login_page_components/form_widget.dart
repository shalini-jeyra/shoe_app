import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FormWidget extends StatefulWidget {
 FormWidget({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required TextEditingController phoneNumberController,
    @required TextEditingController passwordController,
  }) : _formKey = formKey, _phoneNumberController = phoneNumberController, _passwordController = passwordController, super(key: key);

  final GlobalKey<FormState> _formKey;  
  final TextEditingController _phoneNumberController;
  final TextEditingController _passwordController;

  @override
  _FormWidgetState createState() => _FormWidgetState();
}
class _FormWidgetState extends State<FormWidget> {
  final databaseReference = FirebaseFirestore.instance;
   var phone;
  var password;
  var dataBaseValue;
  var mobileNumberValue;
  var passwordValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Column(
        children: [
          Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: widget._phoneNumberController,
        cursorColor: Colors.black,
        keyboardType: TextInputType.phone,
        validator: (value) {
          if (value.isEmpty ||
              value.length < 10 ||
              value.length > 10) {
            return 'Enter correct phone number';
          }
          return null;
        },
        onChanged: (value) {
          print(value);
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: ButtonBorder.primaryContainer),
          labelText: 'Phone number',
        ),
      ),
    ),
         Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: widget._passwordController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: ButtonBorder.primaryContainer),
          labelText: 'Password',
        ),
        cursorColor: Colors.black,
        obscureText: true,
        validator: (value) {
          if (value.isEmpty || value.length <= 5) {
            return 'Invalid password';
          }
          return null;
        },
      ),
    ), 
          Align(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Text(
                'Forget password?',
                style: HintFonts.primaryText,
              ),
            ),
            alignment: Alignment.bottomRight,
          ),
          SizedBox(height: 30),
          Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: ButtonTheme(
            minWidth: double.infinity,
            height: 60,
            child: RaisedButton(
              child: Text(
                'Login',
                style: TextFonts.secondaryText,
              ),
              onPressed: () {
                phone = widget._phoneNumberController;
                print(widget._phoneNumberController);
                password = widget._passwordController;
                print(password);
                if ((widget._phoneNumberController.text != '') &&
                    (widget._passwordController.text != '')) {
                  databaseReference
                      .collection('Users')
                      .doc(
                        widget._phoneNumberController.text,
                      )
                      .set({
                    "Mobile Number": widget._phoneNumberController.text,
                    "Password": widget._passwordController.text,
                  });
                }
                final form = widget._formKey.currentState;
                phone = widget._phoneNumberController.text;
                password = widget._passwordController.text;
                if (form.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InitialPage(),
                    ),
                  );
                } else
                  print('invalid email or password');
              },
              shape: RoundedRectangleBorder(
                borderRadius: ButtonBorder.primaryContainer,
              ),
              color: ButtonColor.secondaryColor,
            ),
          ),
        ),
        ],
      ),
    );
  }
}
