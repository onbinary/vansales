import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../components/roundedbutton.dart';
import '../../components/titletext.dart';

class StockAcceptRow extends StatelessWidget {
  const StockAcceptRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            TitleText(
              fontsize: kTextDefaultSize * 1.2,
              title: "title",
              colordata: kPrimaryColor,
            ),
            TitleText(
              fontsize: kTextDefaultSize,
              title: "title",
              colordata: kPrimaryColor,
            ),
          ],
        ),
        RoundedButton(
          text: "Login",
          press: () {},
          color: kLightSage,
          textcolor: KMediumSpringGreen,
          widthval: 0.3,
          marginvertical: 5,
          borderRadius: 10,
          horizontalPadding: 40,
          verticalPadding: 10,
        )
      ],
    );
  }
}
