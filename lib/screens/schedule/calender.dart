import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.defaultPadding),
      decoration: BoxDecoration(
        color: Constants.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TableCalendar(
        daysOfWeekVisible: false,
        headerStyle: const HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        firstDay: DateTime(2020, 1, 1),
        lastDay: DateTime(2040, 12, 31),
        focusedDay: DateTime.now(),
        calendarBuilders: CalendarBuilders(
          todayBuilder: (context, date, events) => Container(
            margin: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Constants.textColor,
              shape: BoxShape.circle,
            ),
            child: Text(
              date.day.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
