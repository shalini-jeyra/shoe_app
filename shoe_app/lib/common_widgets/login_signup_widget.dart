import 'package:flutter/material.dart';
import 'package:shoe_app/pages/login_page/login_page_components/login_page_components.dart';

class LoginSignupWidget extends StatefulWidget {
  final String text;
  final bool condition;
  final Function validator;
  final TextInputType textInputType;
  final Function onSaved;
  
  LoginSignupWidget({this.text,this.textInputType,this.condition,this.validator,this.onSaved,});
  @override
  _LoginSignupWidgetState createState() => _LoginSignupWidgetState();
}
class _LoginSignupWidgetState extends State<LoginSignupWidget> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _textController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(10),
        child: TextFormField(
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: ButtonBorder.primaryContainer),
            labelText:widget.text,
          ),
          cursorColor: Colors.black,
          keyboardType: widget.textInputType,
          obscureText: widget.condition,
          validator: widget.validator,
          onSaved: widget.onSaved,
          controller: _textController,
        ),
      ),
    );
  }
}

