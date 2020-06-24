import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:chopper_example/home_screen_state.dart';
import 'package:chopper_example/pages/home_screen.dart';
import 'package:flutter/widgets.dart';

import 'resources/books_repository.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StateNotifierProvider<HomeScreenStateNotifier, HomeScreenState>(
        create: (_) => HomeScreenStateNotifier(BooksRepository()),
        child: HomeScreen(),
      ),
    );
  }
}
