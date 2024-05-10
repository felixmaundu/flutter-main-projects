import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project7/tabs/bottom/AccountPageScreen.dart';
import 'package:project7/tabs/bottom/HomeScreen.dart';
import 'package:project7/tabs/bottom/MyShop.dart';

import 'package:project7/tabs/bottom/NotificationScreen.dart';
import 'package:project7/tabs/bottom/PostScreen.dart';
import 'package:project7/tabs/bottom/SearchScreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:project7/tabs/drawer/HomeDrawer.dart';

import 'package:get_storage/get_storage.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    MyShop(),
    AccountPageScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print

    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  final themeData = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[currentIndex]),
      // Scaffold(
      //   // appBar: AppBar(
      //   //   title: Text("data"),
      //   // ),
      //  drawer: HomeDrawer(),

      //   body: Center(child: pages[currentIndex]),
      // ),

      drawer: HomeDrawer(),
      backgroundColor: Theme.of(context).backgroundColor == Brightness.light
          ? Colors.white
          : Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        //selectedItemColor: isDarkMode ? Colors.grey.shade100 : Colors.black87,
        // unselectedItemColor:
        //     isDarkMode ? Colors.lightBlue.shade100 : Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.notifications_active_outlined),
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              key: UniqueKey(),
              radius: 17,
              // backgroundColor: Colors.black12,
              backgroundImage: CachedNetworkImageProvider(
                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
