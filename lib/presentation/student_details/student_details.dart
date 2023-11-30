import 'package:flutter/material.dart';
import 'package:student_database_using_provider/core/color/colors.dart';
import 'package:student_database_using_provider/core/constants/constants.dart';

import 'widgets/details_widget.dart';

class StudentDetailsScreen extends StatelessWidget {
  const StudentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: kWhiteColor,
        ),
        title: const Text(
                  'Student Details',
                  style: TextStyle(color: kWhiteColor),
                ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.delete,
                  color: kWhiteColor,
                ),
                kWidth20,
                Icon(
                  Icons.edit,
                  color: kWhiteColor,
                )
              ],
            ),
          )
        ],
      ),
      body:   const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight30,
          Center(
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/avatar.jpg'),
            ),
          ),
          kHeight10,
          Center(
            child: Text('John Smith', style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold,
            ),),
          ),
          kHeight10,
          Center(
            child: Text('Electronics & Communication', style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.normal,
            ),),
          ),
          kHeight20,
         
          DetailCard(title1: 'Age', title2: '25 years',),
          DetailCard(title1: 'Parent', title2: 'James Warner',),
          DetailCard(title1: 'Phone', title2: '9567322340',),
          DetailCard(title1: 'Email Address', title2: 'example@outlook.com',),
        ],
      ),
    );
  }
}


