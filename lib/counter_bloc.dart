import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCounterEvent>((event, emit) => emit(state + 1));

    on<DecrementCounterEvent>((event, emit) => emit(state - 1));
  }
}
