import '../details_screen/widgets/chipview_item_widget.dart';
import '../details_screen/widgets/details_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_title.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:suman_s_kali_app/widgets/app_bar/custom_app_bar.dart';
import 'package:suman_s_kali_app/widgets/custom_elevated_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10.v),
            child: Column(
              children: [
                _buildShoeImage(context),
                SizedBox(height: 16.v),
                Container(
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Best Seller".toUpperCase(),
                          style: CustomTextStyles.bodyMediumPrimary_1,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Nike Air Jordan",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "967.800",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Container(
                        width: 289.h,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          right: 65.h,
                        ),
                        child: Text(
                          "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray600.copyWith(
                            height: 1.57,
                          ),
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Gallery",
                          style: CustomTextStyles.titleMedium18,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildDetails(context),
                      SizedBox(height: 14.v),
                      _buildSizeRow(context),
                      SizedBox(height: 15.v),
                      _buildChipView(context),
                      SizedBox(height: 24.v),
                      _buildPriceRow(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgAppsCircle,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Men’s Shoes",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFrame31,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 6.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildShoeImage(BuildContext context) {
    return SizedBox(
      height: 202.v,
      width: 311.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup136,
            height: 65.v,
            width: 311.h,
            alignment: Alignment.bottomCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNikeZoomWinfl160x253,
            height: 160.v,
            width: 253.h,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDetails(BuildContext context) {
    return SizedBox(
      height: 56.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 155.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return DetailsItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSizeRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 18.h,
          right: 24.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Size",
              style: CustomTextStyles.titleMedium18,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(
                "EU",
                style: theme.textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 3.v,
              ),
              child: Text(
                "US",
                style: CustomTextStyles.titleSmallGray600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 3.v,
              ),
              child: Text(
                "UK",
                style: CustomTextStyles.titleSmallGray600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        runSpacing: 13.v,
        spacing: 13.h,
        children: List<Widget>.generate(6, (index) => ChipviewItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineIndigoE.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 7.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 5.v),
                Text(
                  "849.69",
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 167.h,
            text: "Add To Cart",
            margin: EdgeInsets.only(bottom: 7.v),
          ),
        ],
      ),
    );
  }
}
