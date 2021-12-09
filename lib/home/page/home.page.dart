import 'package:bloc_teaching/home/home.dart';
import 'package:bloc_teaching/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const CounterText(),
          ElevatedButton(
            onPressed: () {
              context.router.push(const HomeDetailsRoute());
            },
            child: const Text('Go to Details'),
          ),
          ElevatedButton(
            onPressed: () {
              final counterCubit = context.read<CounterCubit>();
              counterCubit.increment();
            },
            child: const Text('increment'),
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterCubit = context.read<CounterCubit>();
    final counterState = counterCubit.state;
    final count = counterState.count;

    return Text(count.toString());
  }
}
