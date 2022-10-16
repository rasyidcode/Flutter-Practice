import 'package:bloc/bloc.dart';

void main() async {
  final initialValue = 0;
  // final cubit = CounterCubit(initialValue);

  // print(cubit.state);

  // for (int i = initialValue; i < 10; i++) {
  //   cubit.increment();
  // }

  // print(cubit.state);

  // steam cubit
  // final subscription = cubit.stream.listen(print);
  // cubit.increment();

  // await Future.delayed(Duration.zero);

  // await subscription.cancel();
  // cubit.close();

  Bloc.observer = SimpleBlocObserver();

  CounterCubit(initialValue)
    ..increment()
    ..increment()
    ..close();

  CounterCubit2(initialValue)
    ..decrement()
    ..decrement()
    ..triggerError()
    ..close();

  final cubit2 = CounterCubit2(10);
  cubit2.decrement();
  print(cubit2.state);
  cubit2.triggerError();
  print(cubit2.state);
  cubit2.close();
}

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increment() => emit(state + 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);

    // print('changed to : $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}

class CounterCubit2 extends Cubit<int> {
  CounterCubit2(int initialState) : super(initialState);

  void decrement() => emit(state - 1);

  void triggerError() =>
      addError(Exception('Error is triggered!'), StackTrace.current);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);

    // print('changed to : $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);

    emit(-1);
  }
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
