// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../core/color/colors.dart';
import '../registration/resgistration_screen.dart';
import '../student_list/student_list_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final _screens = [
    const RegistrationScreen(),
    const StudentListScreen(),
  ];

  final _title = [
    'Register Student',
    'Students List',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: Center(child: Text(_title[_currentIndex],
        style: const TextStyle(color: kWhiteColor),),
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: bottomNaigation(),
    );
  }
  SalomonBottomBar bottomNaigation() {
    return SalomonBottomBar(
      backgroundColor:kNavColor ,
        currentIndex: _currentIndex,
        onTap: (int _index) {
          setState(() {
            _currentIndex = _index;
          });
        },
        items: [
          SalomonBottomBarItem(
            selectedColor: kWhiteColor,
            unselectedColor: kWhiteColor,
            icon: const Icon(Icons.add),
            title: const Text('Register'),
          ),
          SalomonBottomBarItem(
            selectedColor: kWhiteColor,
            unselectedColor: kWhiteColor,
            icon: const Icon(Icons.list),
            title: const Text('Students'),
          )
        ]);
  }

}
