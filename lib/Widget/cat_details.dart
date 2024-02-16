import 'package:flutter/material.dart';
import 'package:my_cat/data/Model/cat.dart';

class catDetailsWidget extends StatefulWidget {
  final Cat cat;
  const catDetailsWidget({
    super.key,
    required this.cat,
  });

  @override
  State<catDetailsWidget> createState() => _catDetailsWidgetState();
}

class _catDetailsWidgetState extends State<catDetailsWidget> {
  bool isNameColored = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(widget.cat.imageLink),
        Text(widget.cat.name,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: isNameColored
                    ? Colors.deepPurple
                    : Colors.black)), //cat name

        //cat info
        Text('orgin:${widget.cat.origin}'),
        Text('Max wieght:${widget.cat.maxWeight}'),
        Text('Min Wieght:${widget.cat.minWeight}'),
        Text('Length:${widget.cat.length}'),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isNameColored = !isNameColored;
              });
            },
            child: Text('change Name color'))
        //Text('Intelligence:${cat.i}'),
      ],
    );
  }
}
