import 'package:flutter/material.dart';
import 'package:month_days_ui/bloc/locale_provider.dart';
import 'package:month_days_ui/data/app_constants.dart';
import 'package:month_days_ui/pages/choose_date_page.dart';
import 'package:provider/provider.dart';

class ChooseLangPage extends StatelessWidget {
  const ChooseLangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                localeProvider.setLocale(localeUz, localeScriptEmpty);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const ChooseDatePage()),
                );
              },
              child: const Text('O\'zbekcha'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                localeProvider.setLocale(localeUz, localeScriptCyrl);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const ChooseDatePage()),
                );
              },
              child: const Text('Ўзбекча'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                localeProvider.setLocale(localeRu, localeScriptEmpty);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const ChooseDatePage()),
                );
              },
              child: const Text('Русский'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                localeProvider.setLocale(localeEn, localeScriptEmpty);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const ChooseDatePage()),
                );
              },
              child: const Text('English'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
