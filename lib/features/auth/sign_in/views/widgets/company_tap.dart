import 'package:flutter/material.dart';
import 'package:revive/core/app_route/route_names.dart';
import 'package:revive/core/components/custom_elevated_button.dart';
import 'package:revive/core/components/custom_text_form_field_with_title.dart';
import 'package:revive/core/utilies/extensions/app_extensions.dart';
import 'package:revive/features/auth/sign_in/views/widgets/forget_password.dart';
import 'package:revive/features/auth/sign_in/views/widgets/have_account_or_not.dart';

class CompanyTab extends StatelessWidget {
  const CompanyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextFormFieldWithTitle(
          hintText: "enter company email",
          title: "Company Email",
        ),
        SizedBox(
          height: context.height * 0.01,
        ),
        CustomTextFormFieldWithTitle(
          hintText: "enter company password",
          title: "Company Password",
        ),
        ForgetPassword(),
        SizedBox(height: context.height * 0.015),
        CustomElevatedButton(
          name: "Sign In",
          onPressed: () {},
          height: context.height * 0.07,
          width: context.width * 0.8,
        ),
        HaveAccountOrNot(
          title: "Don't have an account?",
          btnText: "Sign Up",
          onPressed: () {
            context.pushScreen(RouteNames.signUpScreen);
          },
        ),
      ],
    );
  }
}
