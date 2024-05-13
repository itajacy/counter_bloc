// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:equatable/equatable.dart';

part of 'counter_cubit.dart';

// A parte de estado é idêntica a do Bloc

abstract class CounterState extends Equatable {
  final int counter;
  const CounterState(this.counter);

  @override
  List<Object> get props => [counter];
}

class CounterStateInitial extends CounterState {
  //* O estado inicial sempre será 0(ZERO)
  const CounterStateInitial() : super(0);
}

class CounterStateData extends CounterState {
  CounterStateData(int counter) : super(counter);
}
