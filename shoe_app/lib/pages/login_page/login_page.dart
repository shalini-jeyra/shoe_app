import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// changes made in login page
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final databaseReference = FirebaseFirestore.instance;
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var phone;
  var password;
  List<String> loginList = new List();
  var dataBaseValue;
  var mobileNumberValue;
  var passwordValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: BackgroundColor.primaryColor,
          elevation: 0,
        ),
        backgroundColor: BackgroundColor.primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppNameWidget(),
                SizedBox(
                  height: 30,
                ),
                WelcomeWidget(),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: _phoneNumberController,
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
                          controller: _passwordController,
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
                              phone = _phoneNumberController;
                              print(_phoneNumberController);
                              password=_passwordController;
                              print(password);
                              if ((_phoneNumberController.text != '') &&
                                  (_passwordController.text != '')) {
                                databaseReference
                                    .collection('Users')
                                    .doc(_phoneNumberController.text,)
                                    .set({
                                  "Mobile Number": _phoneNumberController.text,
                                  "Password": _passwordController.text,
                                });
                                // databaseReference
                                //     .collection('Users')
                                //     .doc(_phoneNumberController.text)
                                //     .get()
                                //     .then(
                                //   (value) {
                                //     dataBaseValue = value.data;
                                //     mobileNumberValue =
                                //         dataBaseValue['Mobile Number'];
                                //     passwordValue = dataBaseValue['Password'];
                                //     loginList = [
                                //       mobileNumberValue,
                                //       passwordValue
                                //     ];
                                //     print(loginList);
                                //   },
                                // );
                              }
                              final form = _formKey.currentState;
                              phone = _phoneNumberController.text;
                              password = _passwordController.text;
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BottomWidget(
                  text: 'Don\'t have an account?',
                  text1: 'SIGN UP',
                  navigator: SignupPage(),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'or',
                    style: TextFonts.ternaryText,
                  ),
                ),
                BoxWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
