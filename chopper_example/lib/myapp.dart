import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:chopper_example/books_state.dart';
import 'package:chopper_example/pages/my_home_page.dart';
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
      home: StateNotifierProvider<BooksStateNotifier, BooksState>(
        create: (_) => BooksStateNotifier(BooksRepository()),
        child: MyHomePage(),
      ),
    );
  }
}
