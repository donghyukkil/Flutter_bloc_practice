import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';
import 'counter_obsever.dart';

void main() {
  Bloc.observer = const CounterObsever();

  runApp(const CounterApp());
}
