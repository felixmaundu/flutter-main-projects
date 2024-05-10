import 'package:flutter/material.dart';

class NewCarSaleDetailScreen extends StatefulWidget {
  NewCarSaleDetailScreen({Key? key}) : super(key: key);

  @override
  State<NewCarSaleDetailScreen> createState() => _NewCarSaleDetailScreenState();
}

class _NewCarSaleDetailScreenState extends State<NewCarSaleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border))
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
