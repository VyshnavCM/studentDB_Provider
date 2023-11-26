import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/color/colors.dart';
import '../../../core/constants/constants.dart';

class Section2 extends StatelessWidget {
  const Section2({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .9,
      child: Column(
        children: [
          kHeight20,
          TextFormField(
            cursorColor: kMainTextColor,
            decoration: const InputDecoration(
                hintText: 'Enter parents name',
                hintStyle: TextStyle(color: kGreyColor),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor))),
          ),
          kHeight20,
          TextFormField(
            cursorColor: kMainTextColor,
            decoration: const InputDecoration(
                hintText: 'Enter course name',
                hintStyle: TextStyle(color: kGreyColor),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor))),
          ),
          kHeight20,
          TextFormField(
            cursorColor: kMainTextColor,
            decoration: const InputDecoration(
                hintText: 'Enter phone number',
                hintStyle: TextStyle(color: kGreyColor),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor))),
          ),
          kHeight20,
          TextFormField(
            cursorColor: kMainTextColor,
            decoration: const InputDecoration(
                hintText: 'Enter email id',
                hintStyle: TextStyle(color: kGreyColor),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor))),
          ),
        ],
      ),
    );
  }
}
