import 'package:chopper_example/myapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';

void main() {
  Stetho.initialize();
  runApp(MyApp());
}
