import 'package:flutter/material.dart';
import 'package:my_cat/data/Model/cat.dart';
import 'package:my_cat/screens/cats_details_screeen.dart';

class Catcard extends StatelessWidget {
  final Cat cat;

  const Catcard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (Context) {
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    cat.imageLink),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  cat.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
