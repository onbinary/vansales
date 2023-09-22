import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vansales/core/constants.dart';
import 'package:vansales/presentation/components/verticalseparator.dart';
import '../../../application/stock/stock_bloc.dart';
import '../../../core/strings.dart';
import '../../../domain/core/di/injectable.dart';
import 'productsrow.dart';

final prefs = getIt<SharedPreferences>();
List<TextEditingController> controllers = [];

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<StockBloc>(context).add(Getstockinfo(
          branchId: prefs.get(BRANCH_ID).toString(),
          bearerToken: prefs.get(TOKEN).toString()));
    });

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
          BlocBuilder<StockBloc, StockState>(
            builder: (context, state) {
              if (state.isLoading) {
              } else if (state.stockresponse.isEmpty) {
              } else if (state.isAuthError) {
              } else if (state.isClientError) {
              } else if (state.isServerError) {}

              for (int i = 0; i < state.stockresponse.length; i++) {
                controllers.add(TextEditingController());
              }

              return Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => ProductsRow(
                        stockresponse: state.stockresponse,
                        index: index,
                        countController: controllers[index]),
                    separatorBuilder: (context, index) =>
                        const VerticalListSeparator(),
                    itemCount: state.stockresponse.length),
              );
            },
          )
        ],
      ),
    ));
  }
}
