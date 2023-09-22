import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vansales/application/login/login_bloc.dart';
import 'package:vansales/core/constants.dart';
import 'package:vansales/presentation/components/roundedbutton.dart';
import 'package:vansales/presentation/home/home.dart';
import 'package:vansales/presentation/login/components/textcontainer.dart';
import 'package:vansales/presentation/login/components/textfieldcontainer.dart';
import 'package:vansales/presentation/products/products.dart';

import '../../../core/strings.dart';
import '../../../domain/core/di/injectable.dart';

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    getIt.get<SharedPreferences>();

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.height * 0.4,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: size.height * 0.6,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: kTextHeadSize),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                TextFieldContainer(
                  child: TextField(
                    controller: username,
                    decoration: const InputDecoration(
                        hintText: "Username",
                        icon: Icon(
                          Icons.person,
                          color: kPrimaryColor,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFieldContainer(
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        icon: Icon(
                          Icons.password,
                          color: kPrimaryColor,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                TextContainer(
                  text: "Forrgot Password ?",
                  color: kPrimaryColor,
                  press: () {},
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                    } else if (state.loginresponse?.statusMessage ==
                        "Success!!!") {
                      final prefs = getIt<SharedPreferences>();
                      prefs.setInt(USER_Id, state.loginresponse!.userId!);
                      prefs.setString(TOKEN, state.loginresponse!.token!);
                      prefs.setString(BUSINESS_ID, "46");
                      prefs.setString(BRANCH_ID, "1");
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Products()));
                      });
                    } else if (state.loginresponse?.statusMessage ==
                        "Error!!!") {
                    } else if (state.isAuthError) {
                    } else if (state.isClientError) {
                    } else if (state.isServerError) {}

                    return RoundedButton(
                      text: "Login",
                      press: () {
                        BlocProvider.of<LoginBloc>(context).add(Loginclick(
                            username: username.text, password: password.text));
                      },
                      color: kPrimaryColor,
                      textcolor: Colors.white,
                      widthval: 0.8,
                      marginvertical: 10,
                      borderRadius: 40,
                      horizontalPadding: 40,
                      verticalPadding: 20,
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
