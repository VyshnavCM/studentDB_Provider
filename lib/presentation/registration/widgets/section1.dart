import 'package:flutter/material.dart';
import 'package:student_database_using_provider/presentation/registration/resgistration_screen.dart';
import '../../../core/color/colors.dart';
import '../../../core/constants/constants.dart';
final formkeys = GlobalKey<FormState>();


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
            backgroundImage: AssetImage('assets/avatar.jpg'),
          ),
        ),
        kWidth20,
        SizedBox(
          width: size.width * .52,
          child: Form(
            key: formkeys,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  cursorColor: kMainTextColor,
                  decoration: const InputDecoration(
                      hintText: 'Enter name',
                      hintStyle: TextStyle(color: kGreyColor),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kMainTextColor)),
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: kMainTextColor, width: 2))),
                              validator: (name) => name!.length < 3
                    ? 'Should atleast have 3 characters'
                    : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                kHeight10,
                TextFormField(
                  controller: ageController,
                  cursorColor: kMainTextColor,
                  decoration: const InputDecoration(
                      hintText: 'Enter age',
                      hintStyle: TextStyle(color: kGreyColor),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kMainTextColor)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: kMainTextColor))),
                          validator: (name) => name!.isEmpty
                    ? 'Enter the age'
                    : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                          
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
