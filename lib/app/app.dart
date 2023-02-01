
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/views/theme_manager.dart';

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState(); // defaul const
  MyApp._internal(); // private named const

  static final MyApp instance = MyApp._internal(); // single instance -- singleton


  factory MyApp() => instance;


}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}