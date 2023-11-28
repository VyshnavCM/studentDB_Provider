
import 'package:flutter/material.dart';
import 'package:student_database_using_provider/presentation/registration/widgets/section1.dart';
import 'package:student_database_using_provider/presentation/registration/widgets/section2.dart';

import '../../../core/color/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 200,
        // color: kPrimaryColor,
        decoration: BoxDecoration(
          color: kButtonColor,
            borderRadius: BorderRadius.circular(10)),
        child: TextButton(
            onPressed: () {
              formkey.currentState!.validate();
              formkeys.currentState!.validate();
            },
            child: const Text(
              'Register',
              style: TextStyle(color: kWhiteColor),
            )));
  }
}
