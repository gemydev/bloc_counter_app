import 'package:bloc_counter_app/bloc/counter_bloc.dart';
import 'package:bloc_counter_app/bloc/counter_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Counter'),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                child: Icon(Icons.remove),
                onPressed: () {
                  counterBloc.add(CounterEvent.decrement);
                },
              ),
              Text(
                '$count',
                style: TextStyle(fontSize: 25.0),
              ),
              FlatButton(
                child: Icon(Icons.add),
                onPressed: () {
                  counterBloc.add(CounterEvent.increment);
                },
              ),
            ],
          ));
        },
      ),
    );
  }
}
