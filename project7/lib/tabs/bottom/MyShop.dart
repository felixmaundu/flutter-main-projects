import 'package:flutter/material.dart';

class MyShop extends StatefulWidget {
  MyShop({Key? key}) : super(key: key);

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  @override
  Widget build(BuildContext context) {
    return Container(child: (Text('shop')));
  }
}
