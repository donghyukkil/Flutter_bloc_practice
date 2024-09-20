import 'package:flutter/material.dart';

import 'counter/view/counter_page.dart';
import 'timer/timer.dart';
import 'timer/view/timer_page.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : super(home: const CounterPage());
}

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Timer',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(72, 74, 126, 1),
        ),
      ),
      home: const TimerPage(),
    );
  }
}
