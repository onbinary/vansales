import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.text,
    required this.color,
    required this.press,
  });

  final String text;
  final Color color;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.centerRight,
        width: size.width * 0.8,
        child: TextButton(
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
