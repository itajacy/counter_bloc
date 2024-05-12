part of 'counter_cubit.dart';

// A parte de estado é idêntica a do Bloc

abstract class CounterState {
  final int counter;

  CounterState(this.counter);
}

class CounterStateInitial extends CounterState {
  //* O estado inicial sempre será 0(ZERO)
  CounterStateInitial() : super(0);
}

class CounterStateData extends CounterState {
  CounterStateData(int counter) : super(counter);
}
