import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';

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
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Placeholder(),
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
