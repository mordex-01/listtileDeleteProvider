import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/home/home_screen.dart';
import 'package:testprovider/todolist_state.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ToDoListState(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
