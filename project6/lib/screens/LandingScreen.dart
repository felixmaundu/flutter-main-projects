import 'package:flutter/material.dart';
import 'package:project6/tabs/bottom/HomeScreen.dart';
import 'package:project6/tabs/bottom/MessagesScreen.dart';
import 'package:project6/tabs/bottom/NotificationScreen.dart';
import 'package:project6/tabs/bottom/PostScreen.dart';
import 'package:project6/tabs/bottom/SearchScreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:project6/tabs/drawer/HomeDrawer.dart';
import 'package:get/get.dart';
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
    NotificationScreen(),
    MessagesScreen()
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
    //themeData.writeIfNull("darkmode", false);
    // bool isDarkMode = themeData.read("darkmode");
    return Scaffold(
        body: Scaffold(
          //body: pages[currentIndex],
          body: Center(child: pages[currentIndex]),
        ),
        // appBar: AppBar(
        //   title: Text("data"),
        // ),
        drawer: HomeDrawer(),
        backgroundColor: Colors.white,

        //  Container(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Column(
        //     children: const [
        //       Center(child: Text('landing page')),
        //     ],
        //   ),
        // ),
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
          items: const [
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
              icon: Icon(Icons.notifications_active_outlined),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email_outlined),
              label: 'Messages',
            ),
          ],
        ));
  }
}
