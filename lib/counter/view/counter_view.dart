import 'package:bloc_practice/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        // Note: A BlocBuilder is used to wrap the Text widget in order to update the text any time the CounterCubit state changes
        // Note: Only the Text widget is wrapped in a BlocBuilder because that is the only widget that needs to be rebuilt in response to state changes in the CounterCubit.
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.displayMedium);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            // Note: context.read<CounterCubit>() is used to look-up the closest CounterCubit instance.
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
