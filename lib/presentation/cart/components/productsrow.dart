import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:vansales/domain/db/model/product_model.dart';
import 'package:vansales/domain/stock/model/stock_response/stock_response.dart';

import '../../../core/constants.dart';
import '../../../domain/db/function/db_functions.dart';
import '../../components/roundedbutton.dart';

// ignore: must_be_immutable
class ProductsRow extends StatelessWidget {
  int index;
  // const ProductsRow(
  //   List<StockResponse> stockresponse, {
  //   super.key,
  // });

  ProductsRow({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("length..${getProducts().length}");
    print("aaaaaaaaaaaaa");

    return Row(
      children: [
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     // SizedBox(
        //     //   width: size.width * 0.2,
        //     //   height: size.width * 0.2,
        //     //   child: Image.asset("assets/images/fish.png"),
        //     // ),
        //     // SizedBox(
        //     //   width: size.width * 0.2,
        //     //   height: size.width * 0.10,
        //     //   child: TextField(
        //     //     enabled: false,
        //     //     maxLines: 1,
        //     //     maxLength: 5,
        //     //     onChanged: (text) {},
        //     //     textAlign: TextAlign.center,
        //     //     decoration: const InputDecoration(
        //     //         border: OutlineInputBorder(),
        //     //         contentPadding: EdgeInsets.all(5),
        //     //         counterText: '',
        //     //         isDense: true),
        //     //   ),
        //     // ),
        //   ],
        // ),
        // SizedBox(
        //   width: size.width * 0.1,
        // ),
        Expanded(
          child: Container(
            height: size.height * .09,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            getProducts()[index].name.toString(),
                            maxLines: 1,
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.close))
                        ],
                      ),
                      Text("Total Qty/${getProducts()[index].count}"),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("AED ${getProducts()[index].price}"),
                          const SizedBox(
                            width: 20,
                          ),
                          Text("Total Amount ${getProducts()[index].price}"),
                        ],
                      ),
                    ],
                  ),
                ),
                // RoundedButton(
                //   text: "Add to Cart",
                //   press: () {
                //     try {
                //       getProducts().singleWhere((obj) =>
                //           obj.id == stockresponse[index].itemId.toString());
                //       getProducts()[index].count =
                //           countController.value.toString();
                //     } catch (e) {
                //       addProduct(ProductModel(
                //           id: stockresponse[index].itemId.toString(),
                //           count: countController.value.toString(),
                //           name: stockresponse[index].itemName.toString(),
                //           price: stockresponse[index].minSalePrice.toString()));
                //     }
                //   },
                //   color: kPrimaryColor,
                //   textcolor: Colors.white,
                //   widthval: double.infinity,
                //   marginvertical: 0,
                //   borderRadius: 10,
                //   horizontalPadding: 10,
                //   verticalPadding: 5,
                // ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
