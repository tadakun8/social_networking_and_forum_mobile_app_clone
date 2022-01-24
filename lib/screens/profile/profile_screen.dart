import 'dart:math';

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
        body: Stack(
          children: [
            NotificationListener<OverscrollIndicatorNotification>(
              child: SingleChildScrollView(
                  child: Stack(
                children: [
                  Positioned(
                    top: -40,
                    left: -110,
                    child: Transform.rotate(
                      // rotate 45 degree
                      angle: pi / 4,
                      child: Container(
                        width: 300,
                        height: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(45)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.orange.shade200,
                                const Color(0xFFFBEFDA),
                                Constants.primaryColor
                              ],
                              stops: const [
                                0.1,
                                0.3,
                                0.5
                              ]),
                        ),
                        child: Container(
                          width: 297,
                          height: 297,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(45)),
                            color: Constants.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: Constants.defaultPadding),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Constants.defaultPadding),
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Constants.defaultPadding * 1.25,
                        ),
                        Schedule(),
                        SizedBox(
                          height: Constants.defaultPadding * 1.25,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Constants.defaultPadding),
                          child: const FloatingBottomBar(),
                        )
                      ],
                    ),
                  ),
                ],
              )),
              onNotification: (OverscrollIndicatorNotification notification) {
                notification.disallowIndicator();
                return false;
              },
            ),
          ],
        ));
  }
}
