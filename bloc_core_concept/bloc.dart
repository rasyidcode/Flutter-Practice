import 'package:bloc/bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  final bloc = CounterBloc();
  final subscription = bloc.stream.listen((event) {
    print(event);
  });
  print(bloc.state);

  bloc.add(CounterIncrementIncresed());
  await Future.delayed(Duration.zero);

  print(bloc.state);

  await subscription.cancel();
  await bloc.close();
}

abstract class CounterEvent {}

class CounterIncrementIncresed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementIncresed>((event, emit) {
      emit(state + 1);
    });
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print('$change');
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);

    print('$transition');
  }

  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
    print('$event');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('$error');
  }
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    print('${bloc.runtimeType} => $change');
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);

    print('${bloc.runtimeType} => ${event.runtimeType}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    print('${bloc.runtimeType} => ${transition.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
  }
}
