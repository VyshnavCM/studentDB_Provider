// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import '../../../core/color/colors.dart';
import '../../../core/constants/constants.dart';

final formkey = GlobalKey<FormState>();

class Section2 extends StatelessWidget {
  const Section2({
    super.key,
    required this.size,
  });

  final Size size;

  String? validateEmail(String? email){
    RegExp emailRegexp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isEmailValidId = emailRegexp.hasMatch(email ?? '');
    if(isEmailValidId){
      return 'Please enter a valid email Id';
    }
    else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final parentsNameController = TextEditingController();
    final mobileNumberController = TextEditingController();
    final emailIdController = TextEditingController();
    final courseController = TextEditingController();

    return SizedBox(
      width: size.width * .9,
      child: Form(
        key: formkey,
        child: Column(
          children: [
            kHeight20,
            TextFormField(
              controller: parentsNameController,
              cursorColor: kMainTextColor,
              decoration: const InputDecoration(
                hintText: 'Enter parents name',
                hintStyle: TextStyle(color: kGreyColor),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: kMainTextColor)),
              ),
              validator: (parentName) => parentName!.length < 3
                  ? 'Should atleast have 3 characters'
                  : null,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
              controller: emailIdController,
              cursorColor: kMainTextColor,
              decoration: const InputDecoration(
                  hintText: 'Enter email id',
                  hintStyle: TextStyle(color: kGreyColor),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kMainTextColor)),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: kMainTextColor))),
                      validator: validateEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,

            ),
          ],
        ),
      ),
    );
  }
}
