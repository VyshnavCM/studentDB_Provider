import 'package:flutter/material.dart';
import 'package:student_database_using_provider/core/color/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (BuildContext context, int newIndex, Widget? _) {
        return BottomNavigationBar(
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            currentIndex: newIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kNavColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: kGreyColor,
            selectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.grey,
            ),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Register'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: 'Students'),
            ]);
      },
    );
  }
}
