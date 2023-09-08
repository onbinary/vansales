import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vansales/core/constants.dart';
import 'package:vansales/presentation/components/verticalseparator.dart';
import 'productsrow.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(kDefaultMargin),
      child: Column(
        children: [
          const CupertinoSearchTextField(
            backgroundColor: Colors.black12,
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => const ProductsRow(),
                separatorBuilder: (context, index) =>
                    const VerticalListSeparator(),
                itemCount: 20),
          )
        ],
      ),
    ));
  }
}
