import 'package:flutter/material.dart';
import '../views/resources/routes_manager.dart';
import '../views/resources/theme_manager.dart';

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState(); // defaul const
  const MyApp._internal(); // private named const

  static const MyApp instance = MyApp._internal(); // single instance -- singleton


  factory MyApp() => instance;


}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}