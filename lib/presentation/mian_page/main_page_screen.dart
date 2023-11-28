import 'package:flutter/material.dart';
import 'package:student_database_using_provider/core/color/colors.dart';
import 'package:student_database_using_provider/presentation/mian_page/widget/bottom_navigation_widget.dart';
import 'package:student_database_using_provider/presentation/registration/resgistration_screen.dart';
import 'package:student_database_using_provider/presentation/student_list/student_list_screen.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});

  final _screens = [
    const RegistrationScreen(),
    const StudentListScreen(),
  ];

  final _title = [    'Register Student',
    'Students List',
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, index, child) {
            return Center(
                child: Text(
              _title[index],
              style: const TextStyle(color: kWhiteColor),
            ));
          },
        ),
      ),
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: indexChangeNotifier,
              builder: (context, int index, _) {
                return _screens[index];
              })),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
