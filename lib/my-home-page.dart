import 'dart:developer';

import 'package:BuildWhen/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExampleBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Example BLoC state:',
              ),
              BlocConsumer<ExampleBloc, ExampleState>(
                listenWhen: (previous, current) => false,
                listener: (context, state) {
                  log('listen fired');
                },
                buildWhen: (previous, current) => false,
                builder: (context, state) {
                  log('build fired');
                  if (state is ExampleInitial) return Text('Initial');
                  if (state is ExampleLoading) return Text('Loading');
                  if (state is ExampleSuccess) return Text('Success');
                  return Text('No data');
                },
              )
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              context.bloc<ExampleBloc>().add(ExampleLoadingFire());
            },
            tooltip: 'Fire loading',
            child: Icon(Icons.refresh),
          ),
        ),
      ),
    );
  }
}
