import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

//* No Bloc sao criados 3 arquivos que trabalham em conjunto bloc, event, state
//* por isso o 'part' e o 'part of', pois na verdade seriam uma coisa só
//* mas que são separadas para melhor organização

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  //* estado inicial da aplicação
  CounterBloc() : super(CounterStateInitial()) {
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

  void _increment(CounterIncrement event, Emitter<CounterState> emit) {
    //*emitindo uma atualização do estado
    emit(CounterStateData(state.counter + 1));
  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    //*emitindo uma atualização do estado
    emit(CounterStateData(state.counter - 1));
  }
}
