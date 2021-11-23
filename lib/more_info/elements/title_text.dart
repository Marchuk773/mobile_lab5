import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(12),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 26, color: Colors.grey.shade800),
        ));
  }
}
