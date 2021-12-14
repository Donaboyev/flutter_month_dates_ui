import 'package:flutter/material.dart';
import 'package:month_days_ui/calendar/src/table_calendar.dart';

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
            Row(
              children: const [
                Spacer(),
                Text('Du'),
                Spacer(),
                Text('Se'),
                Spacer(),
                Text('Ch'),
                Spacer(),
                Text('Pa'),
                Spacer(),
                Text('Ju'),
                Spacer(),
                Text('Sh'),
                Spacer(),
                Text('Ya'),
                Spacer(),
              ],
            ),
            const SizedBox(height: 20),
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
            ),
          ],
        ),
      ),
    );
  }
}
