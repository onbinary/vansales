import 'package:flutter/material.dart';
import 'package:vansales/presentation/components/titletext.dart';

import '../../../core/constants.dart';

class FishImage extends StatelessWidget {
  const FishImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kLilyWhite,
        borderRadius: BorderRadius.circular(kDefaultRadius),
      ),
      child: Row(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: const TitleText(
                fontsize: kTextDefaultSize,
                title: "aaaaaa",
                colordata: Colors.black),
          )),
          Expanded(child: Image.asset("assets/images/fish.png"))
        ],
      ),
    );
  }
}
