import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:month_days_ui/month_dates_page.dart';

class ChooseDatePage extends StatefulWidget {
  const ChooseDatePage({Key? key}) : super(key: key);

  @override
  State<ChooseDatePage> createState() => _ChooseDatePageState();
}

class _ChooseDatePageState extends State<ChooseDatePage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 200),
          const Text(
            'Choose any date',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 300,
            width: 500,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime.now(),
              minimumYear: 1920,
              maximumDate: DateTime.now(),
              onDateTimeChanged: (date) {
                dateTime = date;
              },
            ),
          ),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MonthDatesPage(selectedDate: dateTime),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
