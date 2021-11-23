import 'package:flutter/cupertino.dart';

class SecondText extends StatelessWidget {
  final String text;
  const SecondText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width * 0.8,
        child: Text(text,
            textAlign: TextAlign.start, style: const TextStyle(fontSize: 20)));
  }
}
