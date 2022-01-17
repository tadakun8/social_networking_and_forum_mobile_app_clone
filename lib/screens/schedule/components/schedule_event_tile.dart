import 'package:flutter/material.dart';

import '../../../constants.dart';

class ScheduleEventTile extends StatelessWidget {
  const ScheduleEventTile({
    Key? key,
    required this.eventType,
    required this.title,
    required this.time,
  }) : super(key: key);

  final String eventType;
  final String title;
  final String time;

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
            ],
          )
        ],
      ),
    );
  }
}
