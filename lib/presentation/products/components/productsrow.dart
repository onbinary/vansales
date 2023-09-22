import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:vansales/domain/db/model/product_model.dart';
import 'package:vansales/domain/stock/model/stock_response/stock_response.dart';
import 'package:vansales/presentation/cart/Cart.dart';

import '../../../core/constants.dart';
import '../../../domain/db/function/db_functions.dart';
import '../../components/roundedbutton.dart';

// ignore: must_be_immutable
class ProductsRow extends StatelessWidget {
  List<StockResponse> stockresponse;
  TextEditingController countController;
  int index;
  // const ProductsRow(
  //   List<StockResponse> stockresponse, {
  //   super.key,
  // });

  ProductsRow(
      {Key? key,
      required this.stockresponse,
      required this.index,
      required this.countController})
      : super(key: key);

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
              width: size.width * 0.2,
              height: size.width * 0.10,
              child: TextField(
                maxLines: 1,
                maxLength: 5,
                controller: countController,
                onChanged: (text) {},
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(5),
                    counterText: '',
                    isDense: true),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stockresponse[index].itemName.toString(),
                        maxLines: 1,
                      ),
                      Text("Total Qty/${stockresponse[index].saleQty}"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("AED ${stockresponse[index].minSalePrice}"),
                    ],
                  ),
                ),
                RoundedButton(
                  text: "Add to Cart",
                  press: () {
                    try {
                      getProducts().singleWhere((obj) =>
                          obj.id == stockresponse[index].itemId.toString());
                      getProducts()[index].count =
                          countController.value.toString();
                    } catch (e) {
                      addProduct(ProductModel(
                          id: stockresponse[index].itemId.toString(),
                          count: countController.value.text.toString(),
                          name: stockresponse[index].itemName.toString(),
                          price: stockresponse[index].minSalePrice.toString()));
                    }

                    print("countval${countController.value.text}");

                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cart()));
                    });
                  },
                  color: kPrimaryColor,
                  textcolor: Colors.white,
                  widthval: double.infinity,
                  marginvertical: 0,
                  borderRadius: 10,
                  horizontalPadding: 10,
                  verticalPadding: 5,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
