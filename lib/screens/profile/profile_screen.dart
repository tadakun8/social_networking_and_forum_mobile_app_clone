import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/profile/components/floating_bottom_bar.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/profile/components/interest.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/profile/components/profile_header.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/profile/components/profile_info.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/profile/components/schedule.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      // Wrap NoficationListener<OverscrollIndicatorNotification> to remove splash effect at last scroll
      body: NotificationListener<OverscrollIndicatorNotification>(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(Constants.defaultPadding),
            child: Column(
              children: [
                const ProfileHeader(),
                SizedBox(
                  height: Constants.defaultPadding * 1.25,
                ),
                SizedBox(
                  height: 250,
                  child: ProfileInfo(),
                ),
                SizedBox(
                  height: Constants.defaultPadding * 1.25,
                ),
                const Interest(),
                SizedBox(
                  height: Constants.defaultPadding * 1.25,
                ),
                Schedule(),
                SizedBox(
                  height: Constants.defaultPadding * 1.25,
                ),
                const FloatingBottomBar(),
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
