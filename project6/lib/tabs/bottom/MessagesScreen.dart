import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(child: Text('messages')),
    ));
  }
}
