import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardsItemWidget extends StatelessWidget {
  const ProductcardsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 85.v,
          width: 87.h,
          padding: EdgeInsets.symmetric(
            horizontal: 1.h,
            vertical: 13.v,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder16,
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup207,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgNikeEpicReact,
            height: 57.v,
            width: 83.h,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nike Club Max",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                "64.95",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 12.v),
              Row(
                children: [
                  CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillWhiteATL12,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup61,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "1",
                      style: CustomTextStyles.bodyMediumSwitzerOnPrimary,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCloseWhiteA700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 4.v,
          ),
          child: Column(
            children: [
              Text(
                "L",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 32.v),
              CustomImageView(
                imagePath: ImageConstant.imgDeleteIcon,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
