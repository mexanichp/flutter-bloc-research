part of 'example_bloc.dart';

@immutable
abstract class ExampleEvent {
  const ExampleEvent();
}

class ExampleLoadingFire extends ExampleEvent {
  const ExampleLoadingFire();
}

class ExampleSuccessFire extends ExampleEvent {
  const ExampleSuccessFire();
}
