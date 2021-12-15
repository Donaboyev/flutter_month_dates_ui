import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:month_days_ui/pages/month_dates_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseDatePage extends StatefulWidget {
  const ChooseDatePage({Key? key}) : super(key: key);

  @override
  State<ChooseDatePage> createState() => _ChooseDatePageState();
}

class _ChooseDatePageState extends State<ChooseDatePage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final T = AppLocalizations.of(context);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 200),
          Text(
            T?.chooseAnyDate ?? '',
            style: const TextStyle(fontSize: 30),
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
            child: Text(T?.submit ?? ''),
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
