import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

import '../../../constants.dart';

class ScheduleEventTile extends StatelessWidget {
  ScheduleEventTile({
    Key? key,
    required this.eventType,
    required this.title,
    required this.time,
  }) : super(key: key);

  final String eventType;
  final String title;
  final String time;

  final List<Widget> _connectionImage = [
    CircleAvatar(
      backgroundImage: AssetImage(Constants.account01Path),
      backgroundColor: Colors.transparent,
    ),
    CircleAvatar(
      backgroundImage: AssetImage(Constants.account02Path),
      backgroundColor: Colors.transparent,
    ),
    CircleAvatar(
      backgroundImage: AssetImage(Constants.account03Path),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Constants.defaultPadding / 2),
      padding: EdgeInsets.all(Constants.defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eventType,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.grey[600], fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Constants.defaultPadding * 0.75,
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Constants.defaultPadding * 0.75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Constants.defaultPadding * 0.75,
                    horizontal: Constants.defaultPadding * 0.75),
                decoration: BoxDecoration(
                  color: Constants.secondaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  time,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Row(
                children: [
                  FlutterImageStack.widgets(
                    children: _connectionImage,
                    totalCount: _connectionImage.length,
                    itemRadius: 35,
                    itemBorderColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: Constants.defaultPadding / 2,
                  ),
                  Text(
                    "+ 26",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
