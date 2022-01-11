import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/connection/components/connection_header.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/connection/components/interaction_stats.dart';

import '../../constants.dart';

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(Constants.defaultPadding),
          child: Column(
            children: [
              const ConnectionHeader(),
              SizedBox(
                height: Constants.defaultPadding,
              ),
              const InteractionStats()
            ],
          ),
        ),
      ),
    );
  }
}
