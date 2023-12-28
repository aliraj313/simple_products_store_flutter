import 'package:codelikepro_project/home.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple ,),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
