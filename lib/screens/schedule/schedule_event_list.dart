import 'package:flutter/material.dart';

import '../../constants.dart';

class ScheduleEventList extends StatelessWidget {
  const ScheduleEventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "18 August",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
          ],
        ),
        SizedBox(
          height: Constants.defaultPadding * 0.75,
        ),
        const ScheduleEvent(
          eventType: "Freelance Talks",
          title: "How do you do to manage your monthly cash flow",
          time: "14.30 PM",
        ),
        const ScheduleEvent(
          eventType: "Freelance Talks",
          title: "How do you do to manage your monthly cash flow",
          time: "14.30 PM",
        )
      ],
    );
  }
}

class ScheduleEvent extends StatelessWidget {
  const ScheduleEvent({
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
                .copyWith(fontWeight: FontWeight.bold),
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
