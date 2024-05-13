import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterStateInitial());

  void increment() {
    // aqui ele emite uma atualização do estado, uma nova instância
    //  e o Cubit só atualizará a tela se ele perceber que a nova
    // instancia eh diferente da instancia que estava lah
    emit(CounterStateData(state.counter + 1));
  }

  void decrement() {
    // aqui ele emite uma atualização do estado
    emit(CounterStateData(state.counter - 1));
  }
}
