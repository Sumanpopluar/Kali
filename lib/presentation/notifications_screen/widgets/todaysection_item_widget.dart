import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:suman_s_kali_app/core/app_export.dart';

// ignore: must_be_immutable
class TodaysectionItemWidget extends StatelessWidget {
  const TodaysectionItemWidget({Key? key})
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
            top: 7.v,
            bottom: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 139.h,
                child: Text(
                  "We Have New Products With Offers",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Row(
                children: [
                  Text(
                    "364.95",
                    style: theme.textTheme.titleSmall,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "260.00",
                      style: CustomTextStyles.titleSmallGray600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            bottom: 41.v,
          ),
          child: Column(
            children: [
              Text(
                "6 min ago",
                style: CustomTextStyles.bodyMediumGray600,
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
