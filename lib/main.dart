import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter_provider.dart';
import 'package:provider_demo/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => CounterProvider(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.white),
        home: CounterScreen(),
      ),
    );
  }
}
