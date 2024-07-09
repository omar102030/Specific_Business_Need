import 'package:flutter/material.dart';

import 'package:task_from_omar_ahmed/core/theming/colors.dart';

class NavBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int index) func;
  const NavBarWidget({
    super.key,
    required this.currentIndex,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey,
      selectedItemColor: ColorsManager.mainBlue,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: currentIndex,
      onTap: func,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.abc),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarm_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility_new_rounded),
          label: '',
        )
      ],
    );
  }
}
