import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/schedule/schedule_screen.dart';

import '../../../constants.dart';

class Schedule extends StatelessWidget {
  Schedule({Key? key}) : super(key: key);

  final List<Widget> carousellist = [
    const ScheduleContent(),
    const ScheduleContent()
  ];

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
            IconButton(
              padding: const EdgeInsets.all(0),
              constraints: const BoxConstraints(),
              splashRadius: 24,
              onPressed: () async {
                await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const ScheduleScreen();
                  }),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
              ),
            )
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
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.85,
            viewportFraction: 0.9,
            enableInfiniteScroll: false,
          ),
          items: carousellist,
        ),
      ],
    );
  }
}

class ScheduleContent extends StatelessWidget {
  const ScheduleContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(Constants.defaultPadding / 2),
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
