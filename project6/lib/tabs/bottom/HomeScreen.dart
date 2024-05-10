import 'package:flutter/material.dart';
import 'package:project6/tabs/top/BookingAndTravelsScreen.dart';
import 'package:project6/tabs/drawer/HomeDrawer.dart';
import 'package:project6/tabs/top/AllContent.dart';
import 'package:project6/tabs/top/CustomContent.dart';
import 'package:project6/tabs/top/News.dart';
import 'package:project6/tabs/top/Setting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final themeData = GetStorage();

  @override
  Widget build(BuildContext context) {
    // themeData.writeIfNull("darkmode", false);
    // bool isDarkMode = themeData.read("darkmode");
    return DefaultTabController(
      length: 6,
      initialIndex: 1,
      child: SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.white,
          //drawer: HomeDrawer(),

          /// APPBAR
          appBar: AppBar(
            centerTitle: true,
            //backgroundColor: isDarkMode ? Colors.black : Colors.white,
            elevation: 0,
            // leading: IconButton(
            //   //onPressed: () {},
            //   icon: Icon(Icons.menu),
            // ),

            // ClipOval(
            //   child: Image.network(
            //     'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
            //     height: 25,
            //     width: 25,
            //     fit: BoxFit.cover,
            //   ),
            // ),

            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, right: 6),
                child: CircleAvatar(
                  key: UniqueKey(),
                  radius: 22,
                  // backgroundColor: Colors.black12,
                  backgroundImage: CachedNetworkImageProvider(
                    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                  ),
                ),
              )
            ],
            title: Text(
              "TabBar",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          //####################################################
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                // decoration: BoxDecoration(
                //   color: Colors.blueAccent,
                //   borderRadius: BorderRadius.circular(5),
                // ),
                child: TabBar(
                  isScrollable: true,

                  // unselectedLabelColor:
                  //     isDarkMode ? Colors.black : Colors.lightBlue,
                  indicatorColor: Color.fromARGB(255, 17, 124, 224),
                  //indicator: ,
                  // indicator: BoxDecoration(
                  //   color: Colors.blueAccent,
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  tabs: [
                    Tab(
                      child: Text(
                        'News & updates',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'All',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Today',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Bookings & Travels',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Ready sales',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'On Budget',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    News(),
                    AllContent(),
                    CustomContent(),
                    BookingAndTravelsScreen(),
                    Setting(),
                    Setting(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
