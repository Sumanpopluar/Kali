import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  const Productcard1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 90.v,
            width: 128.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngitem5550642,
                  height: 81.v,
                  width: 125.h,
                  alignment: Alignment.bottomCenter,
                ),
                CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  alignment: Alignment.topLeft,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFavoriteRed300,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Best Seller".toUpperCase(),
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Nike Jordan",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                Text(
                  "58.7",
                  style: theme.textTheme.titleMedium,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 16.v,
                  width: 42.h,
                  margin: EdgeInsets.only(
                    left: 45.h,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
