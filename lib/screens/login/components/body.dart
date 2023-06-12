import 'package:flutter/material.dart';
import 'package:vansales/constants.dart';
import 'package:vansales/screens/login/components/roundedbutton.dart';
import 'package:vansales/screens/login/components/textfieldcontainer.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
              const TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
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
              const TextFieldContainer(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      icon: Icon(
                        Icons.password,
                        color: kPrimaryColor,
                      ),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                text: "Login",
                press: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
