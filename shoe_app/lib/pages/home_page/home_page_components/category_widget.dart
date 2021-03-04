import 'package:flutter/material.dart';

//Category widget changes
class CategoryWidget extends StatelessWidget {
  final String text;
  final String image;
  const CategoryWidget({
    this.text,this.image
  }) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 125,
          width: 125,decoration: BoxDecoration(image: DecorationImage(image:NetworkImage(image) ),),
        ),
        SizedBox(height: 10,),
        Text(text),
      ],
    );
  }
}
