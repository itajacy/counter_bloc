import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

//* No Bloc sao criados 3 arquivos que trabalham em conjunto bloc, event, state
//* por isso o 'part' e o 'part of', pois na verdade seriam uma coisa só
//* mas que são separadas para melhor organização

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  //* estado inicial da aplicação
  CounterBloc() : super(CounterStateInitial());
}
