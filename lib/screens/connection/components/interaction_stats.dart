import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/connection/components/line_chart.dart';

class InteractionStats extends StatelessWidget {
  const InteractionStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Interaction Stats",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: Constants.defaultPadding,
        ),
        Container(
          padding: EdgeInsets.all(Constants.defaultPadding),
          decoration: BoxDecoration(
            color: Constants.secondaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 3 / 2,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: Constants.defaultPadding,
                    horizontal: Constants.defaultPadding * 2.25,
                  ),
                  // width: 400,
                  // height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: StatsChart(),
                ),
              ),
              SizedBox(
                height: Constants.defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 120,
                    height: 120,
                  ),
                  SizedBox(
                    width: Constants.defaultPadding,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 120,
                    height: 120,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
