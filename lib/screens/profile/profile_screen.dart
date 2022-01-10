import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(Constants.defaultPadding),
          child: Column(
            children: [
              const ProfileHeader(),
              SizedBox(
                height: Constants.defaultPadding * 1.25,
              ),
              const SizedBox(
                height: 200,
                child: ProfileInfo(),
              ),
              SizedBox(
                height: Constants.defaultPadding * 1.25,
              ),
              const Interest(),
              SizedBox(
                height: Constants.defaultPadding * 1.25,
              ),
              const Schedule()
            ],
          ),
        ),
      ),
    );
  }
}
