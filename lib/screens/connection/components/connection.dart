import 'package:flutter/material.dart';

class Connection extends StatelessWidget {
  const Connection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Connection (120)",
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
        const ConnectionPersonInfo(
          name: "Json Morales",
          profession: "Illustrator",
        ),
        const ConnectionPersonInfo(
          name: "Steven Martine",
          profession: "Product Designer",
        ),
        const ConnectionPersonInfo(
          name: "Phillp Morris",
          profession: "Lead Designer",
        ),
      ],
    );
  }
}

class ConnectionPersonInfo extends StatelessWidget {
  final String? imagePath;
  final String name;
  final String profession;
  const ConnectionPersonInfo({
    Key? key,
    this.imagePath,
    required this.name,
    required this.profession,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        // To center the leading icon, surround it with a sizedbox and specify the height.
        leading: const SizedBox(
          height: double.infinity,
          child: Icon(
            Icons.account_circle_outlined,
            size: 37,
          ),
        ),
        title: Text(name),
        subtitle: Text(profession),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
