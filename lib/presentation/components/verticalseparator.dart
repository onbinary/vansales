import 'package:flutter/material.dart';

class VerticalListSeparator extends StatelessWidget {
  const VerticalListSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey,
      thickness: 1,
      height: 25,
    );
  }
}
