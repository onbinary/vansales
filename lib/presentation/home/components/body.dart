import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vansales/application/home/home_bloc_bloc.dart';
import 'package:vansales/core/constants.dart';
import 'package:vansales/core/strings.dart';
import 'package:vansales/presentation/home/components/categorylist.dart';
import 'package:vansales/presentation/home/components/fishimage.dart';

import '../../../domain/core/di/injectable.dart';
import '../../components/titletext.dart';

final prefs = getIt<SharedPreferences>();

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBlocBloc>(context).add(
        FetchUser(
            userId: prefs.get(USER_Id).toString(),
            businessId: prefs.get(BUSINESS_ID).toString(),
            bearerToken: prefs.get(TOKEN).toString()),
      );
    });

    Size size = MediaQuery.of(context).size;

    return BlocBuilder<HomeBlocBloc, HomeBlocState>(
      builder: (context, state) {
        if (state.isLoading) {
        } else if (state.userinfoResponse?.userId != 0) {
          prefs.setInt(BRANCH_ID, state.userinfoResponse!.defBranchId!);

          // WidgetsBinding.instance.addPostFrameCallback((_) {
          //   Navigator.pushReplacement(context,
          //       MaterialPageRoute(builder: (context) => const HomeScreen()));
          // });
        } else if (state.userinfoResponse?.userId == 0) {
        } else if (state.isAuthError) {
        } else if (state.isClientError) {
        } else if (state.isServerError) {}

        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(kDefaultPaddin),
                height: size.height * 0.9,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const TitleText(
                      fontsize: kTextSubHeadSize,
                      title: "Dashboard",
                      colordata: Colors.black,
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 25,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const TitleText(
                        fontsize: kTextDefaultSize,
                        title: "Category",
                        colordata: Colors.black,
                      ),
                    ),
                    const CategoryList(),
                    const FishImage(),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    // const TitleText(
                    //   fontsize: kTextSubHeadSize,
                    //   title: "Recent Stock Accept",
                    //   colordata: Colors.black,
                    // ),
                    // Expanded(
                    //   child: ListView.separated(
                    //     itemBuilder: (context, indes) {
                    //       return const StockAcceptRow();
                    //     },
                    //     separatorBuilder: ((context, index) {
                    //       return const VerticalListSeparator();
                    //     }),
                    //     itemCount: 10,
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
