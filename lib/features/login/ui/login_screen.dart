import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_from_omar_ahmed/features/login/logic/cubit/login_cubit.dart';
import 'package:task_from_omar_ahmed/features/login/ui/widgets/already_have_account_text.dart';
import 'package:task_from_omar_ahmed/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:task_from_omar_ahmed/features/login/ui/widgets/terms_and_conditions_text.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  final String? fallBackRoute;
  const LoginScreen({
    super.key,
    this.fallBackRoute,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            8.verticalSpace,
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GrayRegular,
            ),
            36.verticalSpace,
            Form(
                key: formKey,
                child: Column(
                  children: [
                    AppTextFormField(hintText: 'Email', validator: (value) {}),
                    18.verticalSpace,
                    AppTextFormField(
                      hintText: 'Password',
                      validator: (value) {},
                      isObscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(isObscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    24.verticalSpace,
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        )),
                    40.verticalSpace,
                    AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          context.read<LoginCubit>().emitLoginState();
                        }),
                    16.verticalSpace,
                    const TermsAndConditionsText(),
                    60.verticalSpace,
                    const AlreadyHaveAccountText(),
                    LoginBlocListener(
                      fallBackRoute: args,
                    )
                  ],
                ))
          ],
        ),
      )),
    ));
  }
}
