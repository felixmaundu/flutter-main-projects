import 'package:flutter/material.dart';
import 'package:project22/utils/DrawerComponent.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void changePage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 25),
        //     child: Builder(
        //       builder: (context) => IconButton(
        //         icon: const Icon(
        //           Icons.account_circle,
        //           color: Colors.indigo,
        //         ),
        //         onPressed: () => Scaffold.of(context).openDrawer(),
        //       ),
        //     ),
        //   ),
        //   backgroundColor:
        //       currentIndex == 3 ? const Color(0xffF7F8FA) : Colors.white,
        //   elevation: 0,
        //   centerTitle: false,
        //   titleSpacing: 0,
        // ),
        // drawer: DrawerComponent(),
        body: Center(child: Text('home area')));
  }
}
