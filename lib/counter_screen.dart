import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterProvider counter = Provider.of<CounterProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: Text(
                  'You have pressed this ${counter.count} times',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Consumer<CounterProvider>(builder: (context, data, child) {
                return Text(data.count.toString() ?? " ",
                  style: TextStyle(fontSize: 30),);
              },),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => counter.increment(),
                child: const Text(
                  'Press to Increment',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => counter.decrement(),
                child: const Text(
                  'Press to Decrement',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
