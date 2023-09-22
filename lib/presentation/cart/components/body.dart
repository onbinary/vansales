import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vansales/core/constants.dart';
import 'package:vansales/domain/db/function/db_functions.dart';
import 'package:vansales/presentation/components/verticalseparator.dart';
import '../../../domain/core/di/injectable.dart';
import 'productsrow.dart';

final prefs = getIt<SharedPreferences>();
List<TextEditingController> controllers = [];

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
          // const CupertinoSearchTextField(
          //   backgroundColor: Colors.black12,
          //   prefixIcon: Icon(
          //     CupertinoIcons.search,
          //     color: Colors.grey,
          //   ),
          //   suffixIcon: Icon(
          //     CupertinoIcons.xmark_circle_fill,
          //     color: Colors.grey,
          //   ),
          //   style: TextStyle(color: Colors.black),
          // ),
          // SizedBox(
          //   height: size.height * 0.02,
          // ),
          // BlocBuilder<StockBloc, StockState>(
          //   builder: (context, state) {
          //     if (state.isLoading) {
          //     } else if (state.stockresponse.isEmpty) {
          //     } else if (state.isAuthError) {
          //     } else if (state.isClientError) {
          //     } else if (state.isServerError) {}

          // for (int i = 0; i < state.stockresponse.length; i++) {
          //   controllers.add(TextEditingController());
          // }

          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => ProductsRow(index: index),
                separatorBuilder: (context, index) =>
                    const VerticalListSeparator(),
                itemCount: getProducts().length),
          ),

          //   },
          // )
        ],
      ),
    ));
  }
}
