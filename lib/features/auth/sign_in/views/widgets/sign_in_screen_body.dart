import 'package:flutter/material.dart';
import 'package:revive/core/utilies/assets/images/app_images.dart';
import 'package:revive/core/utilies/colors/app_colors.dart';
import 'package:revive/core/utilies/extensions/app_extensions.dart';
import 'package:revive/core/utilies/styles/app_text_styles.dart';
import 'package:revive/features/auth/sign_in/views/widgets/company_tap.dart';
import 'package:revive/features/auth/sign_in/views/widgets/customer_tab.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.05,
            vertical: context.height * 0.007,
          ),
          child: Column(
            children: [
              Image.asset(
                AppImages.logo,
                width: context.width * 0.4,
              ),
              TabBar(
                dividerHeight: 0,
                indicator: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                labelStyle: AppTextStyles.title20WhiteBold,
                unselectedLabelStyle: AppTextStyles.title18PrimaryColorW500,
                padding: EdgeInsets.all(0),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text("Customer"),
                  ),
                  Tab(
                    child: Text("Company"),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    CustomerTab(),
                    CompanyTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
