import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';

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
            children: const [Placeholder()],
          ),
        ),
      ),
    );
  }
}
