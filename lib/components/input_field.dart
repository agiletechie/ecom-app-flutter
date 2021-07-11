import 'package:flutter/material.dart';
import 'package:ecom_app/constant.dart';

class InputField extends StatelessWidget {
  final String labelText, hintText;
  InputField({this.labelText, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // cant use box decoration in input decoration
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: kPrimaryColor),
          gapPadding: 1.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: kPrimaryColor),
          gapPadding: 1.0,
        ),
      ),
    );
  }
}
