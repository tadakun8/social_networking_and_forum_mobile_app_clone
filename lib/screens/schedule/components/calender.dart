import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../constants.dart';

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

final _eventsList = {
  DateTime.now().subtract(const Duration(days: 2)): ['Event A6', 'Event B6'],
  DateTime.now(): ['Event A7', 'Event B7', 'Event C7', 'Event D7'],
  DateTime.now().add(const Duration(days: 1)): [
    'Event A8',
    'Event B8',
    'Event C8',
    'Event D8'
  ],
  DateTime.now().add(const Duration(days: 3)):
      Set.from(['Event A9', 'Event A9', 'Event B9']).toList(),
};

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

  final _events = LinkedHashMap<DateTime, List>(
    equals: isSameDay,
    hashCode: getHashCode,
  )..addAll(_eventsList);

  List _getEventForDay(DateTime day) {
    return _events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ListView(
          shrinkWrap: true,
          children: _getEventForDay(_selectedDay)
              .map((event) => ListTile(
                    title: Text(event.toString()),
                  ))
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
