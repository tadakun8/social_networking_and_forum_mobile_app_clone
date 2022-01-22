import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';

import 'components/calender.dart';
import 'components/schedule_header.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: NotificationListener<OverscrollIndicatorNotification>(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(Constants.defaultPadding),
            child: Column(
              children: [
                const ScheduleHeader(),
                SizedBox(
                  height: Constants.defaultPadding,
                ),
                const Calender(),
                SizedBox(
                  height: Constants.defaultPadding,
                ),
              ],
            ),
          ),
        ),
        onNotification: (OverscrollIndicatorNotification notification) {
          notification.disallowIndicator();
          return false;
        },
      ),
    );
  }
}
