import '../best_seller_screen/widgets/productcard2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_title.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:suman_s_kali_app/widgets/app_bar/custom_app_bar.dart';

class BestSellerScreen extends StatelessWidget {
  const BestSellerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 18.v,
            right: 20.h,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 222.v,
              crossAxisCount: 2,
              mainAxisSpacing: 18.h,
              crossAxisSpacing: 18.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Productcard2ItemWidget();
            },
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
        text: "Best Sellers",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilter,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchPrimarycontainer24x24,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 36.h,
          ),
        ),
      ],
    );
  }
}
