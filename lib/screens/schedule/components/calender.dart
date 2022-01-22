import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/schedule/components/schedule_event_tile.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/schedule/models/schedule_event.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../constants.dart';

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime _focusedDay = DateTime.now();
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  final _events = LinkedHashMap<DateTime, List<ScheduleEvent>>(
    equals: isSameDay,
    hashCode: getHashCode,
  )..addAll(ScheduleEvent.sampleScheduleEventList);

  List<ScheduleEvent> _getEventForDay(DateTime day) {
    return _events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            focusedDay: _focusedDay,
            eventLoader: _getEventForDay,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, date, events) {
                if (events.isNotEmpty) {
                  return _buildEventsMarker(date, events);
                }
              },
              todayBuilder: (context, date, events) => Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Constants.textColor.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  date.day.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              selectedBuilder: (context, day, focusedDay) => Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Constants.textColor,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  day.day.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: Constants.defaultPadding * 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              // e.g) 18 August
              DateFormat('d MMMM　').format(_selectedDay),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.grey,
            )
          ],
        ),
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: Constants.defaultPadding / 2),
          shrinkWrap: true,
          children: _getEventForDay(_selectedDay)
              .map((event) => ScheduleEventTile(
                  eventType: event.eventType,
                  title: event.title,
                  time: event.time))
              .toList(),
        )
      ],
    );
  }
}

Widget _buildEventsMarker(DateTime date, List events) {
  return Positioned(
    right: 10,
    top: 10,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Constants.textColor),
      width: 5.0,
      height: 5.0,
      // child: Center(
      //   child: Text(
      //     '${events.length}',
      //     style: TextStyle().copyWith(
      //       color: Colors.white,
      //       fontSize: 12.0,
      //     ),
      //   ),
    ),
  );
}
