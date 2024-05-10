import 'package:flutter/material.dart';
import 'package:project7/tabs/bottom/NotificationScreen.dart';
import 'package:project7/tabs/drawer/drawerPages/SettingPage.dart';
import 'package:project7/tabs/top/BookingAndTravelsScreen.dart';
import 'package:project7/tabs/drawer/HomeDrawer.dart';
import 'package:project7/tabs/top/AllContent.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:project7/tabs/bottom/MessagesScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              snap: true,
              pinned: true,
              centerTitle: true,
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.settings),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.notifications_active_outlined),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessagesScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.near_me_sharp,
                  ),
                ),
              ],
              title: Text(
                "TabBar",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  // color: Colors.grey,
                ),
              ),
              bottom: TabBar(
                isScrollable: true,

                // unselectedLabelColor:
                //     isDarkMode ? Colors.black : Colors.lightBlue,
                //indicatorColor: Color.fromARGB(255, 17, 124, 224),

                // indicator: BoxDecoration(
                //   color: Colors.blueAccent,
                //   // border: Bor,
                //   // shape: shape,
                //   borderRadius: BorderRadius.circular(40),
                // ),
                tabs: [
                  Tab(
                    //height: 30,
                    child: Text(
                      'All',
                      style: Theme.of(context).brightness == Brightness.light
                          ? GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                            )
                          : GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Bookings & Travels',
                      style: Theme.of(context).brightness == Brightness.light
                          ? GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                            )
                          : GoogleFonts.roboto(color: Colors.white),
                      // fontWeight: FontWeight.bold,
                      //color: isDarkMode ? Colors.white : Colors.lightBlue,
                    ),
                  ),
                ],
              ),
            ),
          ],
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
//               Container(
//                 // decoration: BoxDecoration(
//                 //   color: Colors.blueAccent,
//                 //   borderRadius: BorderRadius.circular(5),
//                 // ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ///
// ///
// ///
// ///
// ///was here tab bar

//                 ),
//               ),
              Expanded(
                child: TabBarView(
                  children: [
                    AllContent(),
                    BookingAndTravelsScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
