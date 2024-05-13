part of 'counter_cubit.dart';

// A parte de estado é idêntica a do Bloc

abstract class CounterState {
  final int counter;
  CounterState(this.counter);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CounterState && other.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}

class CounterStateInitial extends CounterState {
  //* O estado inicial sempre será 0(ZERO)
  CounterStateInitial() : super(0);
}

class CounterStateData extends CounterState {
  CounterStateData(int counter) : super(counter);
}
