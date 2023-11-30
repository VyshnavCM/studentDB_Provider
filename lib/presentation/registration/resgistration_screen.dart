// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:student_database_using_provider/core/color/colors.dart';
import 'package:student_database_using_provider/core/constants/constants.dart';

import 'widgets/button.dart';
import 'widgets/illustration.dart';
import 'widgets/section1.dart';
import 'widgets/section2.dart';

final nameController = TextEditingController();
final ageController = TextEditingController();
final mobileNumberController = TextEditingController();
final emailIdController = TextEditingController();


class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Stack(children: [
          Container(
            height: size.height,
            width: size.width,
            color: kMainBackgroundColor,
            // child: const Image(image: AssetImage('assets/register_bg.png')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                kHeight20,
                Section1(size: size),
                Section2(size: size),
                kHeight30,
                const Button(),
                Illustration(size: size)
              ],
            ),
          )
        ]),
      ],
    );
  }
}
