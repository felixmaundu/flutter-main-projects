import 'package:flutter/material.dart';

class CarHire extends StatefulWidget {
  CarHire({Key? key}) : super(key: key);

  @override
  State<CarHire> createState() => _CarHireState();
}

class _CarHireState extends State<CarHire> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('car hire'));
  }
}
