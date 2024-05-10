// ignore: file_names
import 'package:flutter/material.dart';

import 'MainCard.dart';

class MyHomePage extends StatefulWidget {
  var togglecall;
  MyHomePage({this.togglecall});
  // MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var togglecall;
  // MyHomePage({this.togglecall});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: const <Widget>[
      //      Center(
      //   child: IconButton(
      //     icon: Icon(Icons.color_lens),
      //     onPressed: widget.togglecall,
      //   ),
      // ),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      MainCard(),
      //OutlinedCardExample()
    ]));
  }
}
