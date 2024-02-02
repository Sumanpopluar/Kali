import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_title.dart';
import 'package:suman_s_kali_app/widgets/app_bar/custom_app_bar.dart';
import 'package:suman_s_kali_app/widgets/custom_elevated_button.dart';
import 'package:suman_s_kali_app/widgets/custom_icon_button.dart';

class CheckoutOneScreen extends StatelessWidget {
  CheckoutOneScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Information",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillGray,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUserPrimarycontainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "rumenhussen@gmail.com",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "Email",
                                  style: CustomTextStyles.bodySmallGray600,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgEditIcon,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 10.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillGray,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "+88-692 -764-269",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "Phone",
                                  style: CustomTextStyles.bodySmallGray600,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgEditIcon,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 10.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      "Address",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(right: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "Newahall St 36, London, 12908 - UK",
                              style: CustomTextStyles.bodySmallGray600,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDownGray600,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildMap(context),
                    SizedBox(height: 13.v),
                    Text(
                      "Payment Method",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillGray,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUserIndigo800,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 2.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Paypal Card",
                                  style: CustomTextStyles.titleSmallWorkSans,
                                ),
                                SizedBox(height: 3.v),
                                SizedBox(
                                  width: 101.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img,
                                        height: 3.v,
                                        width: 38.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 6.v),
                                      ),
                                      Text(
                                        "0696 4629",
                                        style:
                                            CustomTextStyles.bodySmallGray600,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDownGray600,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 10.v),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              _buildSubtotal(context),
            ],
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
        text: "Checkout",
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 101.v,
      width: 295.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildSubtotal(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: _buildTotalCost(
              context,
              totalCostText: "Subtotal",
              priceText: "1250.00",
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "Shopping",
                    style: CustomTextStyles.titleMediumGray600,
                  ),
                ),
                Text(
                  "40.90",
                  style: CustomTextStyles.titleMedium18,
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Divider(
            color: appTheme.gray200,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: _buildTotalCost(
              context,
              totalCostText: "Total Cost",
              priceText: "1690.99",
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            text: "Payment",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTotalCost(
    BuildContext context, {
    required String totalCostText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 1.v,
            bottom: 4.v,
          ),
          child: Text(
            totalCostText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.primaryContainer,
            ),
          ),
        ),
        Text(
          priceText,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
      ],
    );
  }
}
