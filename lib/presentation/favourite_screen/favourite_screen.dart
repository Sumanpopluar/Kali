import '../favourite_screen/widgets/productcard1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_title.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:suman_s_kali_app/widgets/app_bar/custom_app_bar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key})
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
              mainAxisExtent: 204.v,
              crossAxisCount: 2,
              mainAxisSpacing: 21.h,
              crossAxisSpacing: 21.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Productcard1ItemWidget();
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
        text: "Favourite",
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgFavorite,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 6.v,
          ),
        ),
      ],
    );
  }
}
