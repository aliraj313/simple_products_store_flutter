import 'package:codelikepro_project/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple,fontFamily: GoogleFonts.rumRaisin().fontFamily,),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
