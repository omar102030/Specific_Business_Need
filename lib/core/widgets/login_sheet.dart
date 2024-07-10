import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_from_omar_ahmed/core/di/dependency_injection.dart';
import 'package:task_from_omar_ahmed/core/helpers/extensions.dart';
import 'package:task_from_omar_ahmed/core/routing/routes.dart';
import 'package:task_from_omar_ahmed/core/widgets/app_text_button.dart';

import '../theming/styles.dart';

class LoginSheet extends StatelessWidget {
  final String? fallBackScreen;
  const LoginSheet({super.key, required this.fallBackScreen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'روح اعمل لوجن',
            style: TextStyles.font24BlackBold,
          ),
          15.verticalSpace,
          AppTextButton(
              buttonText: 'حاضر',
              textStyle: TextStyles.font16WhiteMedium,
              onPressed: () {
                if (fallBackScreen != null) {
                  getIt.registerSingleton<String>(fallBackScreen!);
                }
                context.pushNamed(Routes.loginScreen);
              }),
        ],
      ),
    );
  }
}
