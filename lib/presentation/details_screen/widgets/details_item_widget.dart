import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';

// ignore: must_be_immutable
class DetailsItemWidget extends StatelessWidget {
  const DetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup138,
        height: 56.adaptSize,
        width: 56.adaptSize,
      ),
    );
  }
}
