import 'package:flutter/material.dart';
import 'package:shoe_app/pages/signup_page/signup_page_components/signup_page_components.dart';

class SignupPage extends StatelessWidget {
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
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (buildContext) => LoginPage(),
                ),
              );
            }),
      ),
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
              LoginSignupWidget(
                text: 'Name',
                textInputType: TextInputType.name,
                condition: false,
              ),
              LoginSignupWidget(
                text: 'Phone number',
                textInputType: TextInputType.phone,
                condition: false,
              ),
              LoginSignupWidget(
                text: 'Email',
                textInputType: TextInputType.emailAddress,
                condition: false,
              ),
              LoginSignupWidget(
                text: 'Password',
                textInputType: TextInputType.visiblePassword,
                condition: true,
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButtonWidget(
                text: 'SIGN UP',
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
    )
    );
  }
}
