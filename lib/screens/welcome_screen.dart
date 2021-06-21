import 'package:ecom_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'E-Com App',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Koho',
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              SvgPicture.asset(
                'assets/icons/welcome_icon.svg',
                height: size.height * 0.35,
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Log In'),
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
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     'Log In',
                    //     style: TextStyle(
                    //       color: kTextColor,
                    //       fontSize: 18.0,
                    //     ),
                    //   ),
                    //   style: ButtonStyle(
                    //     backgroundColor:
                    //         MaterialStateProperty.all(kPrimaryColor),
                    //     textStyle: MaterialStateProperty.all(kFontFamily),
                    //   ),
                    // ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Sign Up'),
                      ),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          // color: kPrimaryTextColor,
                          fontSize: 18.0,
                          fontFamily: kFontFamily.fontFamily,
                        ),
                        primary: kTextColor, // For Background
                        onPrimary: kPrimaryTextColor, // For text Color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
