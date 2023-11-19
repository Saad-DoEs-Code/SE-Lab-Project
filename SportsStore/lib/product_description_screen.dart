import 'package:e_comapp/core/app_export.dart';
import 'package:e_comapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_comapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_comapp/widgets/app_bar/custom_app_bar.dart';
import 'package:e_comapp/widgets/custom_drop_down.dart';
import 'package:e_comapp/widgets/custom_elevated_button.dart';
import 'package:e_comapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDescriptionScreen extends StatelessWidget {
  ProductDescriptionScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray200,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 823.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              _buildOne(context),
              Padding(
                padding: EdgeInsets.only(
                  right: 27.h,
                  bottom: 288.v,
                ),
                child: CustomIconButton(
                  height: 58.adaptSize,
                  width: 58.adaptSize,
                  padding: EdgeInsets.all(17.h),
                  decoration: IconButtonStyleHelper.fillOnSecondaryContainer,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFill1161,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 3.v,
                  margin: EdgeInsets.only(bottom: 327.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 4,
                    effect: ScrollingDotsEffect(
                      spacing: 5,
                      activeDotColor:
                          theme.colorScheme.onSecondaryContainer.withOpacity(1),
                      dotColor: theme.colorScheme.onSecondaryContainer
                          .withOpacity(0.3),
                      dotHeight: 3.v,
                      dotWidth: 15.h,
                    ),
                  ),
                ),
              ),
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
  Widget _buildOne(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 27.h,
          vertical: 24.v,
        ),
        decoration: AppDecoration.fillOnSecondaryContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Text(
              "55.25".toUpperCase(),
              style: CustomTextStyles.titleLargeBarlowSecondaryContainer,
            ),
            SizedBox(height: 10.v),
            Container(
              width: 320.h,
              margin: EdgeInsets.only(right: 39.h),
              child: Text(
                "Nike F.C. Women's Tie-Dye Football Shirt",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeBarlowPrimaryMedium.copyWith(
                  height: 1.33,
                ),
              ),
            ),
            SizedBox(height: 110.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDropDown(
                  width: 160.h,
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(26.h, 19.v, 18.h, 19.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 14.v,
                      width: 8.h,
                    ),
                  ),
                  hintText: "XS (UK 4-6)",
                  items: dropdownItemList,
                  onChanged: (value) {},
                ),
                CustomElevatedButton(
                  width: 180.h,
                  text: "Add To Bag",
                  buttonTextStyle:
                      CustomTextStyles.titleMediumOnSecondaryContainer,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
