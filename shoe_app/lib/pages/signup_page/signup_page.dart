import 'package:flutter/material.dart';
import 'package:shoe_app/pages/signup_page/signup_page_components/signup_page_components.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  var name;
  var phoneNumber;
  var email;
  var password;
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final databaseReference = FirebaseFirestore.instance;
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
                              controller: _nameController,
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
                              onChanged: (value) {
                                print(value);
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              controller: _phoneNumberController,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter phone number';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                print(value);
                              },
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
                              controller: _emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        ButtonBorder.primaryContainer),
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
                              onChanged: (value) {
                                print(value);
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        ButtonBorder.primaryContainer),
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
                          SizedBox(height: 20),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: ButtonTheme(
                              minWidth: double.infinity,
                              height: 60,
                              child: RaisedButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextFonts.secondaryText,
                                ),
                                onPressed: () async {
                                  final form = _formKey.currentState;
                                  name = _nameController.text;
                                  print(name);
                                  phoneNumber = _phoneNumberController.text;
                                  print(phoneNumber);
                                  email = _emailController.text;
                                  print(email);
                                  password = _passwordController.text;
                                  print(password);
                                  if ((_nameController.text != '') &&(_phoneNumberController.text != '') &&(_emailController.text != '') &&
                                      (_passwordController.text != '')) {
                                    databaseReference
                                        .collection('Signup Users')
                                        .doc(_phoneNumberController.text)
                                        .set({
                                      "User Name": _nameController,
                                      "Email": _emailController,
                                      "Mobile Number":
                                          _phoneNumberController.text,
                                      "Password": _passwordController.text,
                                    });
                                  }
                                  if (form.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                InitialPage()));
                                  } else
                                    print('fill all details');
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
