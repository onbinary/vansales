import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../components/roundedbutton.dart';
import '../components/verticalseparator.dart';
import '../home/components/stockacceptrow.dart';
import '../home/home.dart';

class StockAccept extends StatelessWidget {
  const StockAccept({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stock Accept",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListView.separated(
              itemBuilder: (context, indes) {
                return const StockAcceptRow();
              },
              separatorBuilder: ((context, index) {
                return const VerticalListSeparator();
              }),
              itemCount: 10,
            ),
            RoundedButton(
              text: "Accept Stock",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              color: kPrimaryColor,
              textcolor: Colors.white,
              widthval: 0.8,
              marginvertical: 10,
              borderRadius: 10,
              horizontalPadding: 40,
              verticalPadding: 10,
            )
          ],
        ),
      ),
    );
  }
}
