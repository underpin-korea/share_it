import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class MainpageBloc extends Bloc<MainpageEvent, MainpageState> {
  @override
  MainpageState get initialState => InitialMainpageState();

  @override
  Stream<MainpageState> mapEventToState(
    MainpageEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
