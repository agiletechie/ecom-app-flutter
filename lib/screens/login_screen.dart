import 'package:ecom_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecom_app/components/input_field.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: kTextColor,
        elevation: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: size.height,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/icons/login_icon.svg',
                    height: size.height * 0.32,
                  ),
                  Text(
                    "Log In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Koho',
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  InputField(
                    labelText: "Username",
                    hintText: "Enter Username",
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  InputField(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SizedBox(
                    // height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Log In',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),
                        textStyle: MaterialStateProperty.all(kFontFamily),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
