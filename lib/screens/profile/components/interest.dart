import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';

class Interest extends StatelessWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Interest",
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
          height: Constants.defaultPadding / 2,
        ),
        Wrap(
          children: [
            interestWord(context, "Figma"),
            interestWord(context, "Startup"),
            interestWord(context, "UIX Design"),
            interestWord(context, "Society Issue"),
            interestWord(context, "Sport"),
          ],
        )
      ],
    );
  }
}

Widget interestWord(BuildContext context, String word) {
  return Container(
    margin: EdgeInsets.only(
        right: Constants.defaultPadding,
        top: Constants.defaultPadding / 2,
        bottom: Constants.defaultPadding / 2),
    decoration: BoxDecoration(
      color: Constants.secondaryColor,
      borderRadius: BorderRadius.circular(15),
    ),
    padding: EdgeInsets.symmetric(
        horizontal: Constants.defaultPadding * 1.25,
        vertical: Constants.defaultPadding / 2),
    child: Text(
      word,
      style: Theme.of(context).textTheme.subtitle1,
    ),
  );
}
