import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_from_omar_ahmed/core/routing/routes.dart';

import '../../features/layout_screen/ui/lay_out_screen.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/nav_bar_screen/home_screen/home_screen.dart';
import '../../features/product_screen/ui/product_details_screen.dart';
import '../di/dependency_injection.dart';

Map<String, Widget Function(BuildContext)> myRoutes() {
  return {
    Routes.homeScreen: (context) => const HomeScreen(),
    Routes.layoutScreen: (context) => const LayoutScreen(),
    Routes.loginScreen: (context) => BlocProvider(
        create: (context) => getIt<LoginCubit>(), child: const LoginScreen()),
    Routes.productDetailsScreen: (context) => const ProductDetailsScreen(),
  };
}
