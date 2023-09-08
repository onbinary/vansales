import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    required this.color,
    required this.textcolor,
    required this.widthval,
    required this.marginvertical,
    required this.borderRadius,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  final String text;
  final VoidCallback press;
  final Color color, textcolor;
  final double widthval,
      marginvertical,
      borderRadius,
      horizontalPadding,
      verticalPadding;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginvertical),
      width: size.width * widthval,
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)))),
        child: Text(
          text,
          style: TextStyle(color: textcolor),
        ),
      ),
    );
  }
}
