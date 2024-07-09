import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_from_omar_ahmed/core/routing/routes.dart';

import 'core/routing/app_router.dart';
import 'core/theming/colors.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.layoutScreen,
        //! The onGenerateRoute wont work here, because it doesnt save the route name
        routes: myRoutes(),
        navigatorObservers: [RouteObserverWidget()],
      ),
    );
  }
}

class RouteObserverWidget extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('didPush: ${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    print('didPop: ${route.settings.name}');
  }
}
