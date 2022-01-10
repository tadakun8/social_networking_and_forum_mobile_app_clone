import 'package:flutter/material.dart';

import '../../../constants.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Schedule",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
        SizedBox(
          height: Constants.defaultPadding,
        ),
        // CarouselSlider(
        //   options: CarouselOptions(
        //     autoPlay: true,
        //     aspectRatio: 2.0,
        //     enlargeCenterPage: true,
        //     enlargeStrategy: CenterPageEnlargeStrategy.height,
        //   ),
        //   items: ,
        // ),
        const ScheduleContent()
      ],
    );
  }
}

class ScheduleContent extends StatelessWidget {
  const ScheduleContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.defaultPadding),
      decoration: BoxDecoration(
        color: Constants.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "Midnight Designer Talks: Activity routine after work hours",
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Constants.defaultPadding,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(Constants.defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "03",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Text("Days"),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "15",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Text("Hrs"),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "42",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Text("Min"),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "58",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Text("Sec"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
