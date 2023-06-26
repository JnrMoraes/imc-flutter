import 'package:flutter/material.dart';
import 'package:imc/change_notifier%20/imc_change_notifier_page.dart';
import 'package:imc/setState/imc_setstate_page.dart';

import 'value_notifier/value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goTo(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => page,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _goTo(context, const ImcSetstatePage());
              },
              child: const Text('Set State'),
            ),
            ElevatedButton(
              onPressed: () {
                _goTo(context, const ValueNotifierPage());
              },
              child: const Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () {
                _goTo(
                  context,
                  const ImcChanegNotifierPage(),
                );
              },
              child: const Text('Change Notifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Bloc Pattern (Streams)'),
            ),
          ],
        ),
      ),
    );
  }
}
