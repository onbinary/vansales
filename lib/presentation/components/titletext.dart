import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.fontsize,
    required this.title,
    required this.colordata,
  });

  final double fontsize;
  final String title;
  final Color colordata;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: colordata, fontSize: fontsize),
    );
  }
}
