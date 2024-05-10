import 'package:flutter/material.dart';
import 'package:project7/components/AdviceAndSaftyMeasure.dart';

class News extends StatefulWidget {
  News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              AdviceAndSaftyMeasure(),
            ],
          ),
        ),
      ],
    );
  }
}
