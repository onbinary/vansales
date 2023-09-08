import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../components/titletext.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return Expanded(
    List<String> categories = ["Hand Bag", "Jwellery", "Footwear", "Dresses"];

    return Container(
      height: 150,
      margin: const EdgeInsets.only(top: kDefaultMargin),
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: kDefaultSpace,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              BuildCategory(index, categories[index])),
    );
  }

  Widget BuildCategory(int index, String title) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Image.asset("assets/images/acceptstock.png"),
          Padding(
              padding: const EdgeInsets.only(top: kDefaultPaddin / 3),
              child: TitleText(
                  fontsize: kTextDefaultSize,
                  title: title,
                  colordata: Colors.black54)),
        ],
      ),
    );
  }
}
