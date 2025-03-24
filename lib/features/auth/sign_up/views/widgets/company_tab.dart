import 'package:flutter/material.dart';
import 'package:revive/core/components/custom_elevated_button.dart';
import 'package:revive/core/components/custom_text_form_field_with_title.dart';
import 'package:revive/core/utilies/extensions/app_extensions.dart';
import 'package:revive/features/auth/sign_in/views/widgets/have_account_or_not.dart';

class CompanyTab extends StatelessWidget {
  const CompanyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: context.width * 0.03,
          right: context.width * 0.03,
          top: context.height * 0.015,
        ),
        child: Column(
          spacing: context.height * 0.01,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormFieldWithTitle(
                hintText: "enter company name", title: "Company Name"),
            CustomTextFormFieldWithTitle(
                hintText: "enter company email", title: "Company Email"),
            CustomTextFormFieldWithTitle(
                hintText: "enter company address", title: "Company Address"),
            CustomTextFormFieldWithTitle(
                hintText: "enter company password", title: "Company Password"),
            SizedBox(
              height: context.height * 0.007,
            ),
            CustomElevatedButton(
              name: "Sign Up",
              onPressed: () {},
              height: context.height * 0.07,
              width: context.width * 0.8,
            ),
            HaveAccountOrNot(
              title: 'Have an account',
              btnText: "Sign In",
              onPressed: () {
                context.popScreen();
              },
            )
          ],
        ),
      ),
    );
  }
}
