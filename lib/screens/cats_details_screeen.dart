import 'package:my_cat/Widget/cat_details.dart';
import 'package:my_cat/ctas_details_screeen.dart';

import 'package:flutter/material.dart';
import 'package:my_cat/data/Model/cat.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(cat.name),
          backgroundColor: Colors.deepPurple,
        ),
        body: catDetailsWidget(
          cat: cat,
        ));
  }
}
