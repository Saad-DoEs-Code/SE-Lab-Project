import 'package:e_comapp/core/app_export.dart';
import 'package:e_comapp/widgets/custom_elevated_button.dart';
import 'package:e_comapp/widgets/custom_outlined_button.dart';
import 'package:e_comapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterPageScreen extends StatelessWidget {
  RegisterPageScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                          _buildFortySeven(context),
                          SizedBox(height: 12.v),
                          SizedBox(width: 97.h, child: Divider(indent: 36.h)),
                          SizedBox(height: 34.v),
                          Opacity(
                              opacity: 0.7,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 36.h),
                                  child: Text("Email",
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 20.v),
                          _buildEmail(context),
                          SizedBox(height: 22.v),
                          Opacity(
                              opacity: 0.7,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 36.h),
                                  child: Text("Phone",
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 19.v),
                          _buildPhone(context),
                          SizedBox(height: 22.v),
                          Opacity(
                              opacity: 0.7,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 36.h),
                                  child: Text("Password",
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 16.v),
                          _buildPassword(context),
                          SizedBox(height: 22.v),
                          Opacity(
                              opacity: 0.7,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 36.h),
                                  child: Text("Confirm Password",
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 17.v),
                          _buildConfirmpassword(context),
                          SizedBox(height: 54.v),
                          _buildFortyEight(context),
                          SizedBox(height: 66.v)
                        ]))))));
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return SizedBox(
        height: 351.v,
        width: 430.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgVector1),
                          fit: BoxFit.cover)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgNoiseTexture,
                      height: 186.v,
                      width: 430.h))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 36.h),
                  child: Text("Sign Up", style: theme.textTheme.displayMedium)))
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
  Widget _buildPhone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: CustomTextFormField(
            controller: phoneController,
            hintText: "+91 00000-00000",
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
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 1.h)));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "*********************",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 1.h)));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomOutlinedButton(width: 149.h, text: "Sign Up");
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
        height: 56.v,
        width: 149.h,
        text: "Sign in",
        buttonStyle: CustomButtonStyles.fillRedA,
        buttonTextStyle: CustomTextStyles.bodyMediumOnSecondaryContainer,
        onPressed: () {
          onTapSignIn(context);
        });
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_buildSignUp(context), _buildSignIn(context)])));
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
