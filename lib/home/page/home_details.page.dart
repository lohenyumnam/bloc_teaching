import 'package:bloc_teaching/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Details Screen'),
      ),
      body: const Center(
        child: CounterTwoText(),
      ),
    );
  }
}

class CounterTwoText extends StatelessWidget {
  const CounterTwoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterCubit = context.watch<CounterCubit>();
    final counterState = counterCubit.state;
    final count = counterState.count;

    return Text(count.toString());
  }
}
