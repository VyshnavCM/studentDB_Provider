import 'package:flutter/material.dart';
import 'package:student_database_using_provider/core/color/colors.dart';

class StudentListScreen extends StatelessWidget {
  const StudentListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: kMainBackgroundColor,
        )
      ],
    );
  }
}
