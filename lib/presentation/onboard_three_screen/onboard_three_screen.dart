import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/custom_elevated_button.dart';

class OnboardThreeScreen extends StatelessWidget {
  const OnboardThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNike,
                height: 116.v,
                width: 335.h,
                radius: BorderRadius.circular(
                  2.h,
                ),
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 149.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup284,
                height: 311.v,
                width: 315.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 102.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse9061,
                height: 163.v,
                width: 181.h,
                alignment: Alignment.topRight,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSpringPrevUiTwo(context),
                      SizedBox(height: 30.v),
                      Container(
                        width: 281.h,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          right: 73.h,
                        ),
                        child: Text(
                          "Summer Shoes Nike 2022",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displayMedium!.copyWith(
                            height: 1.40,
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Container(
                        width: 280.h,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          right: 73.h,
                        ),
                        child: Text(
                          "Amet Minim Lit Nodeseru Saku Nandu sit Alique Dolor",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleLargeGray600.copyWith(
                            height: 1.60,
                          ),
                        ),
                      ),
                      SizedBox(height: 43.v),
                      _buildNext(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSpringPrevUiTwo(BuildContext context) {
    return SizedBox(
      height: 330.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Opacity(
            opacity: 0.3,
            child: CustomImageView(
              imagePath: ImageConstant.imgSpringPrevUi2,
              height: 192.v,
              width: 331.h,
              alignment: Alignment.bottomRight,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSpringPrevUi1,
            height: 268.v,
            width: 363.h,
            alignment: Alignment.topLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 5.v,
              margin: EdgeInsets.only(
                top: 25.v,
                bottom: 24.v,
              ),
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: 8,
                  activeDotColor: theme.colorScheme.primary,
                  dotColor: appTheme.indigo50,
                  dotHeight: 5.v,
                  dotWidth: 8.h,
                ),
              ),
            ),
            CustomElevatedButton(
              width: 105.h,
              text: "Next",
            ),
          ],
        ),
      ),
    );
  }
}
