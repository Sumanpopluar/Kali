import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 48.v),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 5.v,
                  bottom: 23.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      decoration: AppDecoration.fillBlue.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder32,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSobhanJoodiZg,
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        radius: BorderRadius.circular(
                          32.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      "Hey, 👋",
                      style: CustomTextStyles.titleLargeGray600,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "alisson becker",
                      style: CustomTextStyles.headlineSmallWhiteA700,
                    ),
                    SizedBox(height: 49.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "Profile",
                            style: CustomTextStyles.titleMediumWhiteA700_1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 34.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHome,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "Home Page",
                            style: CustomTextStyles.titleMediumWhiteA700_1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 33.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrameGray600,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "My Cart",
                            style: CustomTextStyles.titleMediumWhiteA700_1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 33.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteGray600,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "Favorite",
                            style: CustomTextStyles.titleMediumWhiteA700_1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 34.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFatsDelivery,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "Orders",
                            style: CustomTextStyles.titleMediumWhiteA700_1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 34.v),
                    Container(
                      width: 145.h,
                      margin: EdgeInsets.only(right: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgNotifications,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Text(
                            "Notifications",
                            style: CustomTextStyles.titleMediumWhiteA700_1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50.v),
                    SizedBox(
                      width: 147.h,
                      child: Divider(
                        color: appTheme.blueGray800,
                      ),
                    ),
                    SizedBox(height: 48.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "Sign Out",
                            style: CustomTextStyles.titleMediumWhiteA700_1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHome627x150,
                height: 627.v,
                width: 150.h,
                radius: BorderRadius.circular(
                  25.h,
                ),
                margin: EdgeInsets.only(bottom: 44.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
