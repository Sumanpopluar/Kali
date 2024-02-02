import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CheckoutDialog extends StatelessWidget {
  const CheckoutDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 60.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 134.adaptSize,
            width: 134.adaptSize,
            padding: EdgeInsets.all(24.h),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder65,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage50,
              height: 86.adaptSize,
              width: 86.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 25.v),
          Container(
            width: 150.h,
            margin: EdgeInsets.only(
              left: 31.h,
              right: 32.h,
            ),
            child: Text(
              "Your Payment Is Successful",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          CustomElevatedButton(
            text: "Back To Shopping",
          ),
        ],
      ),
    );
  }
}
