import 'package:bloc/bloc.dart';

class CounterBlocObserver extends BlocObserver {
@override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}