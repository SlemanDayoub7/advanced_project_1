import 'package:advanced_project_1/core/helpers/extensions.dart';
import 'package:advanced_project_1/core/routing/routes.dart';
import 'package:advanced_project_1/core/theming/colors.dart';
import 'package:advanced_project_1/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 52)),
            backgroundColor: WidgetStatePropertyAll(ColorsManager.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ));
  }
}
