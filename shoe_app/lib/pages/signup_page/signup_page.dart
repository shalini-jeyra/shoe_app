import 'package:flutter/material.dart';
import 'package:shoe_app/pages/signup_page/signup_page_components/signup_page_components.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String _password;
  String _email;
  String _phoneNumber;
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
          backgroundColor: BackgroundColor.primaryColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppNameWidget(),
                  WelcomeWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          ButtonBorder.primaryContainer),
                                  labelText: 'Name',
                                ),
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.name,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Enter the name';
                                  }
                                  return null;
                                },
                                onSaved: (value) {}),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter phone number';
                                }
                                return null;
                              },
                              onSaved: (value) => _phoneNumber = value,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        ButtonBorder.primaryContainer),
                                labelText: 'Phone number',
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: ButtonBorder.primaryContainer),
                                labelText: 'Email',
                              ),
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value.isEmpty || !value.contains('@')) {
                                  return 'Invalid email';
                                }
                                return null;
                              },
                              onSaved: (value) => _email = value,
                            ),
                          ),
                          
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
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
                              onSaved: (value) => _password = value,
                            ),
                          ),
                          SizedBox(height: 20),
                          RaisedButtonSignupWidget(formKey: _formKey, email: _email, phoneNumber: _phoneNumber, password: _password)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BottomWidget(
                    text: 'By signing up you agree with our',
                    text1: 'Terms & Conditions',
                    navigator: TermsConditionPage(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

