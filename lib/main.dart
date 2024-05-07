import 'package:counter_bloc/page_bloc/counter_bloc_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'page_cubit/counter_cubit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/bloc': (_) => const CounterBlocPage(),
        '/cubit': (_) => const CounterCubitPage(),
      },
      home: const HomePage(),
    );
  }
}
