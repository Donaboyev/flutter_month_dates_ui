import 'package:flutter/material.dart';
import 'package:month_days_ui/calendar/table_calendar.dart';
import 'package:month_days_ui/data/local_source.dart';

class MonthDatesPage extends StatelessWidget {
  final DateTime selectedDate;

  const MonthDatesPage({Key? key, required this.selectedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 100),
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              locale: LocalSource.instance.getLocaleCode(),
            ),
          ],
        ),
      ),
    );
  }
}
