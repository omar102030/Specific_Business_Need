import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_from_omar_ahmed/core/routing/routes.dart';
import 'package:task_from_omar_ahmed/core/theming/styles.dart';
import 'package:task_from_omar_ahmed/core/widgets/app_text_button.dart';
import 'package:task_from_omar_ahmed/core/widgets/login_sheet.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          children: [
            Container(
              height: 300.h,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              child: Text('Product Image'),
            ),
            20.verticalSpace,
            AppTextButton(
                buttonText: 'Add To Cart',
                textStyle: TextStyles.font16WhiteMedium,
                onPressed: () {
                  //? After Checking for user authintication
                  showModalBottomSheet(
                      context: context,
                      builder: (_) => const LoginSheet(
                            fallBackScreen: Routes.productDetailsScreen,
                          ));
                })
          ],
        ),
      ),
    );
  }
}
