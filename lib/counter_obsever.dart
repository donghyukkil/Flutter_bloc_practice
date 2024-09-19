import 'package:bloc/bloc.dart';

class CounterObsever extends BlocObserver {
  const CounterObsever();

  // overriding onChange to see all state changes that occur.
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    print('${bloc.runtimeType} $change');
  }
}
