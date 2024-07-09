import 'dart:async';

import 'package:flutter/material.dart';
import '../../../core/helpers/event_bus.dart';
import '../../../core/widgets/nav_bar_widget.dart';
import '../../nav_bar_screen/fourth_screen/fourth_screen.dart';
import '../../nav_bar_screen/home_screen/home_screen.dart';
import '../../nav_bar_screen/seconed_screen/seconed_screen.dart';
import '../../nav_bar_screen/third_screen/third_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  late List<Widget> navScreens;
  late StreamSubscription eventBusListener;
  @override
  void initState() {
    super.initState();

    navScreens = const [
      HomeScreen(),
      SeconedScreen(),
      ThirdScreen(),
      FourthScreen(),
    ];

    //? In case you need to change something based on that login
    eventBusListener = eventBus.on<LoggedInDuringAppCycle>().listen((event) {
      //? specific implementation
    });
  }

  @override
  void dispose() {
    super.dispose();
    eventBusListener.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navScreens[currentIndex],
      bottomNavigationBar: NavBarWidget(
          currentIndex: currentIndex,
          func: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
    );
  }
}
