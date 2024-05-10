import 'package:flutter/material.dart';

class CustomContent extends StatefulWidget {
  CustomContent({Key? key}) : super(key: key);

  @override
  State<CustomContent> createState() => _CustomContentState();
}

class _CustomContentState extends State<CustomContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('tab 2'),
      ),
    );
  }
}
