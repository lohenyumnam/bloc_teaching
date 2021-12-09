import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(count: 0));

  void increment() {
    final newCount = state.count + 1;
    final newState = CounterState(count: newCount);
    emit(newState);
  }
}
