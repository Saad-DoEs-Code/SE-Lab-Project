import 'package:e_comapp/core/app_export.dart';
import 'package:e_comapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_comapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_comapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CategoryWomenSScreen extends StatelessWidget {
  const CategoryWomenSScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildThirtyOne(context),
              SizedBox(height: 3.v),
              Text(
                "Football (Soccer) / Jerseys",
                style: CustomTextStyles.bodyMediumBarlowBluegray400,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgShape,
        margin: EdgeInsets.only(
          left: 27.h,
          top: 22.v,
          bottom: 21.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 18.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirtyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Women’s",
            style: theme.textTheme.headlineLarge,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgSearch,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 14.v,
              bottom: 3.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIcon,
            height: 14.v,
            width: 18.h,
            margin: EdgeInsets.only(
              left: 27.h,
              top: 15.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }
}
