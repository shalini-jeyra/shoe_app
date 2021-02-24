import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController phoneNumberController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child:Scaffold(
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
              LoginSignupWidget(
                text: 'Phone number',
                textInputType: TextInputType.phone,
                condition: false,
              ),
              LoginSignupWidget(
                text: 'Password',
                textInputType: TextInputType.visiblePassword,
                condition: true,
              ),
              Container(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButtonWidget(
                text: 'LOGIN',
                loginController: phoneNumberController,
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
    )
    );
  }
}
