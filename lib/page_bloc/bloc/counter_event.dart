part of 'counter_bloc.dart';

//*  Preecisamos criar um evento para fazer a atualização de um estado

abstract class CounterEvent {}

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}
