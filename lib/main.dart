import 'package:bloc_counter_app/bloc/counter_bloc.dart';
import 'package:bloc_counter_app/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      title: 'Bloc Counter',
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(0),
        child: CounterPage(),
      ),
    );
  }
}
