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
  

  
 
}
