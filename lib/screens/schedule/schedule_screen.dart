import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/schedule/calender.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/schedule/schedule_header.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(Constants.defaultPadding),
          child: Column(
            children: [
              const ScheduleHeader(),
              SizedBox(
                height: Constants.defaultPadding,
              ),
              Calender(),
            ],
          ),
        ),
      ),
    );
  }
}
