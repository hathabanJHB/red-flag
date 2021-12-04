import 'package:flutter/material.dart';
import 'package:red_flag/routing.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Red-Flag',
      theme: ThemeData(
        //brightness: Brightness.light,
       // primarySwatch: Colors.grey,
        
      ),
      initialRoute: '/loginPage',
      onGenerateRoute: Routing.route,
    );
  }
}