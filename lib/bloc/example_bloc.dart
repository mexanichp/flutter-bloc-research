import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleInitial());

  @override
  Stream<ExampleState> mapEventToState(
    ExampleEvent event,
  ) async* {
    if (event is ExampleLoadingFire) {
      yield ExampleLoading();
    } else if (event is ExampleSuccessFire) {
      yield ExampleSuccess();
    }
  }
}
