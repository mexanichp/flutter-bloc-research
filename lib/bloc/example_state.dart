part of 'example_bloc.dart';

@immutable
abstract class ExampleState {}

class ExampleInitial extends ExampleState {}

class ExampleLoading extends ExampleState {}

class ExampleSuccess extends ExampleState {}
