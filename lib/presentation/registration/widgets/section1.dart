import 'package:flutter/material.dart';

import '../../../core/color/colors.dart';
import '../../../core/constants/constants.dart';

class Section1 extends StatelessWidget {
  const Section1({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        const CircleAvatar(
          backgroundColor: kMainTextColor,
          radius: 65,
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/avatar.jpg') ,
          ),
        ),
        kWidth20,
        SizedBox(
          width: size.width * .52,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter name',
                    hintStyle: TextStyle(color: kGreyColor),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: kMainTextColor, width: 2))),
              ),
              kHeight10,
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter age',
                    hintStyle: TextStyle(color: kGreyColor),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: kMainTextColor))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}