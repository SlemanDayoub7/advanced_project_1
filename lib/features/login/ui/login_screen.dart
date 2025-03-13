import 'package:advanced_project_1/core/helpers/app_regex.dart';
import 'package:advanced_project_1/core/helpers/spacing.dart';
import 'package:advanced_project_1/core/theming/styles.dart';
import 'package:advanced_project_1/core/widgets/app_text_button.dart';
import 'package:advanced_project_1/core/widgets/app_text_form_field.dart';
import 'package:advanced_project_1/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:advanced_project_1/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
bool isObscureText = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcom Back',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(36),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    AppTextFormField(
                        hintText: 'youremail@gmail.com',
                        validator: (email) => AppRegex.isEmailValid),
                    verticalSpace(16),
                    AppTextFormField(
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
                        isObscureText: isObscureText,
                        hintText: 'password',
                        validator: (email) => AppRegex.isPasswordValid),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(buttonText: 'Login', onPressed: () {}),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(40),
                    const DontHaveAccountText()
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
