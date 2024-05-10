import 'package:flutter/material.dart';

class AccountPageScreen extends StatefulWidget {
  AccountPageScreen({Key? key}) : super(key: key);

  @override
  State<AccountPageScreen> createState() => _AccountPageScreenState();
}

class _AccountPageScreenState extends State<AccountPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Account page'),
      ),
    );
  }
}
