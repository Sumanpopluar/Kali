import '../notifications_screen/widgets/todaysection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_title.dart';
import 'package:suman_s_kali_app/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  List todaysectionItemList = [
    {'id': 1, 'groupBy': "Today"},
    {'id': 2, 'groupBy': "Today"},
    {'id': 3, 'groupBy': "Yesterday"},
    {'id': 4, 'groupBy': "Yesterday"}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.h, 18.v, 23.h, 5.v),
          child: GroupedListView<dynamic, String>(
            shrinkWrap: true,
            stickyHeaderBackgroundColor: Colors.transparent,
            elements: todaysectionItemList,
            groupBy: (element) => element['groupBy'],
            sort: false,
            groupSeparatorBuilder: (String value) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 40.v,
                  bottom: 13.v,
                ),
                child: Column(
                  children: [
                    Text(
                      value,
                      style: CustomTextStyles.titleMedium18.copyWith(
                        color: theme.colorScheme.primaryContainer,
                      ),
                    ),
                  ],
                ),
              );
            },
            itemBuilder: (context, model) {
              return TodaysectionItemWidget();
            },
            separator: SizedBox(
              height: 24.v,
            ),
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
        text: "Notifications",
      ),
      actions: [
        AppbarSubtitle(
          text: "Clear All",
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 18.v,
          ),
        ),
      ],
    );
  }
}
