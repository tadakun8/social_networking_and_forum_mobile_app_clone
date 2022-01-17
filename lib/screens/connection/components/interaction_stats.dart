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
                  child: const StatsChart(),
                ),
              ),
              SizedBox(
                height: Constants.defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(Constants.defaultPadding),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Conenct",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    color: Constants.textColor.withOpacity(0.8),
                                    fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "34",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 60,
                                width: 60,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Constants.defaultPadding,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(Constants.defaultPadding),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Request",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    color: Constants.textColor.withOpacity(0.8),
                                    fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "34",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 60,
                                width: 60,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
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
