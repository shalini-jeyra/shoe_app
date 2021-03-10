import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';
// changes made in login page
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                FormWidget(formKey: _formKey, phoneNumberController: _phoneNumberController, passwordController: _passwordController),
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
