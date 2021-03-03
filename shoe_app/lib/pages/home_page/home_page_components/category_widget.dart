import 'package:flutter/material.dart';

//Category widget changes
class CategoryWidget extends StatelessWidget {
  final String text;
  const CategoryWidget({
    this.text
  }) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 125,
          width: 125,
          color: Colors.black,
        ),
        SizedBox(height: 10,),
        Text(text),
      ],
    );
  }
}
