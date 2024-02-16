import 'package:flutter/material.dart';
import 'package:my_cat/screens/Cats_home_screen.dart';
import 'package:my_cat/screens/cats_details_screeen.dart';
import 'package:my_cat/data/Model/cat.dart';
import 'package:my_cat/data/all_cats.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomeScreen(),
    );
  }
}
