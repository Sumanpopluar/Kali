import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:suman_s_kali_app/core/app_export.dart';

// ignore: must_be_immutable
class Productcard2ItemWidget extends StatelessWidget {
  const Productcard2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder16,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup207WhiteA700,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.img81a48fdfedf49d083x125,
            height: 83.v,
            width: 125.h,
          ),
          SizedBox(height: 13.v),
          Text(
            "Best Seller".toUpperCase(),
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 3.v),
          Text(
            "Nike Air Force",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 1.v),
          Text(
            "Men’s Shoes",
            style: CustomTextStyles.bodySmallWorkSansGray600,
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              Text(
                "367.76",
                style: theme.textTheme.titleMedium,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCloseBlue200,
                height: 16.v,
                width: 42.h,
                margin: EdgeInsets.only(
                  left: 30.h,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
