import '../my_cart_screen/widgets/productcards_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_title.dart';
import 'package:suman_s_kali_app/widgets/app_bar/custom_app_bar.dart';
import 'package:suman_s_kali_app/widgets/custom_elevated_button.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key})
      : super(
          key: key,
        );

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
              _buildProductCards(context),
              Spacer(),
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
        text: "My Cart",
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCards(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 30.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ProductcardsItemWidget();
        },
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
            text: "Checkout",
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
