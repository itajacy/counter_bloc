part of 'counter_bloc.dart';

//*  No Bloc o 'estado' de tudo é uma coisa só, e não por atributos separados
//*  TUDO É ATUALIZADO DE UMA ÚNICA VEZ

//* PQ A CLASSE SER ABSTRATA?

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
