import 'package:e_comapp/core/app_export.dart';
import 'package:e_comapp/presentation/register_page_screen/register_page_screen.dart';
import 'package:e_comapp/widgets/custom_elevated_button.dart';
import 'package:e_comapp/widgets/custom_outlined_button.dart';
import 'package:e_comapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 430.h,
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          _buildThirtyThree(context),
                          SizedBox(height: 9.v),
                          SizedBox(width: 91.h, child: Divider(indent: 30.h)),
                          SizedBox(height: 60.v),
                          Opacity(
                              opacity: 0.7,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 36.h),
                                  child: Text("Email",
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 20.v),
                          _buildEmail(context),
                          SizedBox(height: 26.v),
                          Opacity(
                              opacity: 0.7,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 36.h),
                                  child: Text("Password",
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 16.v),
                          _buildPassword(context),
                          SizedBox(height: 18.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 36.h),
                                  child: Text("Forgot Password",
                                      style:
                                          CustomTextStyles.bodyMediumRedA100))),
                          SizedBox(height: 114.v),
                          _buildThirtyFour(context),
                          SizedBox(height: 67.v)
                        ]))))));
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return SizedBox(
        height: 413.v,
        width: 430.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector1,
              height: 374.v,
              width: 430.h,
              alignment: Alignment.topCenter),
          CustomImageView(
              imagePath: ImageConstant.imgNoiseTexture267x430,
              height: 267.v,
              width: 430.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text("Sign in", style: theme.textTheme.displayMedium)))
        ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "demoemail@gmail.com",
            textInputType: TextInputType.emailAddress,
            alignment: Alignment.center,
            contentPadding: EdgeInsets.symmetric(horizontal: 1.h)));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "*********************",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 1.h)));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomOutlinedButton(
        width: 149.h,
        text: "Sign Up",
        onPressed: () {
          onTapSignUp(context).push(MaterialPageRoute(builder: ((context) =>RegisterPageScreen())));
          
        });
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
        height: 56.v,
        width: 149.h,
        text: "Sign in",
        buttonStyle: CustomButtonStyles.fillRedA,
        buttonTextStyle: CustomTextStyles.bodyMediumOnSecondaryContainer);
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_buildSignUp(context), _buildSignIn(context)])));
  }

  /// Navigates to the registerPageScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerPageScreen);
  }
}
