import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../components/roundedbutton.dart';
import '../../home/home.dart';

class ProductsRow extends StatelessWidget {
  const ProductsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: size.width * 0.2,
              height: size.width * 0.2,
              child: Image.asset("assets/images/fish.png"),
            ),
            SizedBox(
              width: size.width * 0.12,
              height: size.width * 0.12,
              child: TextField(
                onChanged: (text) {},
                textAlign: TextAlign.center,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        SizedBox(
          width: size.width * 0.1,
        ),
        Expanded(
          child: Container(
            height: size.height * .15,
            color: Colors.white,
            width: double.infinity,
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
                RoundedButton(
                  text: "Login",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  color: kPrimaryColor,
                  textcolor: Colors.white,
                  widthval: double.infinity,
                  marginvertical: 0,
                  borderRadius: 10,
                  horizontalPadding: 10,
                  verticalPadding: 15,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
