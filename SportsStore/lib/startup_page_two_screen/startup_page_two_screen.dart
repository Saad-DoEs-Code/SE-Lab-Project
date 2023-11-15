import 'package:e_comapp/core/app_export.dart';
import 'package:flutter/material.dart';

class StartupPageTwoScreen extends StatelessWidget {
  const StartupPageTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 430.h,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgVector1,
                          height: 692.v,
                          width: 430.h),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 31.h),
                          child: Text("Welcome",
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 8.v),
                      Opacity(
                          opacity: 0.6,
                          child: Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Text("Sign in to your Registered Account",
                                  style: CustomTextStyles.bodyMediumPrimary))),
                      SizedBox(height: 20.v),
                      SizedBox(width: 93.h, child: Divider(indent: 32.h)),
                      SizedBox(height: 44.v),
                      Opacity(
                          opacity: 0.7,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 45.adaptSize,
                              width: 45.adaptSize,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 45.h),
                              onTap: () {
                                onTapImgArrowRight(context);
                              })),
                      SizedBox(height: 25.v)
                    ])))));
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapImgArrowRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
