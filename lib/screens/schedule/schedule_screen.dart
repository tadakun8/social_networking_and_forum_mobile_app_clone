import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/schedule/schedule_header.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(Constants.defaultPadding),
          child: Column(
            children: [
              const ScheduleHeader(),
              Container(
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
                    titleTextStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
