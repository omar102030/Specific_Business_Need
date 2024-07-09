import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_from_omar_ahmed/core/helpers/extensions.dart';
import 'package:task_from_omar_ahmed/core/theming/colors.dart';

import '../../../core/routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Suppose that this is a product'),
            10.verticalSpace,
            const Icon(Icons.arrow_downward_outlined),
            15.verticalSpace,
            Center(
              child: InkWell(
                onTap: () => context.pushNamed(Routes.productDetailsScreen),
                child: Container(
                  height: 150.h,
                  width: 150.w,
                  color: ColorsManager.darkBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
