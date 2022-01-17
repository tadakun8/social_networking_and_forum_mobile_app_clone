class ScheduleEvent {
  final String eventType;
  final String title;
  final String time;

  ScheduleEvent({
    required this.eventType,
    required this.title,
    required this.time,
  });

  static Map<DateTime, List<ScheduleEvent>> sampleScheduleEventList = {
    DateTime.now().subtract(const Duration(days: 2)): [
      ScheduleEvent(
        eventType: "Freelance Talks",
        title: "How do you do to manage your monthly cash flow",
        time: "14.30 PM",
      ),
      ScheduleEvent(
        eventType: "Freelance Talks",
        title: "How do you do to manage your monthly cash flow",
        time: "14.30 PM",
      ),
    ],
    DateTime.now(): [
      ScheduleEvent(
        eventType: "Vacation",
        title: "Rest in Hawaii",
        time: "03.30 PM",
      ),
      ScheduleEvent(
        eventType: "Vacation",
        title: "Rest in Hawaii",
        time: "03.30 PM",
      ),
    ],
    DateTime.now().add(const Duration(days: 1)): [
      ScheduleEvent(
        eventType: "Caluculate",
        title:
            "In Dart, a constructor with an empty body can be terminated with just a semicolon.",
        time: "22.30 AM",
      ),
      ScheduleEvent(
        eventType: "Caluculate",
        title:
            "In Dart, a constructor with an empty body can be terminated with just a semicolon.",
        time: "22.30 AM",
      ),
    ],
    DateTime.now().add(const Duration(days: 3)): [
      ScheduleEvent(
        eventType: "Vacation2",
        title: "Thunder roars",
        time: "09.30 PM",
      ),
      ScheduleEvent(
        eventType: "Vacation2",
        title: "Thunder roars",
        time: "09.30 PM",
      ),
    ]
  };
}
