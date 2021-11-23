import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondText extends StatelessWidget {
  final String title;
  const SecondText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.all(3),
      child: Text(
       title,
        style:
        TextStyle(fontSize: 22, color: Colors.grey.shade800),
      ),
    );
  }
}
