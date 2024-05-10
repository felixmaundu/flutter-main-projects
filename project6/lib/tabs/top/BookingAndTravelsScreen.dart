import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:project6/tabs/subTop/CarHire.dart';

class BookingAndTravelsScreen extends StatefulWidget {
  BookingAndTravelsScreen({Key? key}) : super(key: key);

  @override
  State<BookingAndTravelsScreen> createState() =>
      _BookingAndTravelsScreenState();
}

class _BookingAndTravelsScreenState extends State<BookingAndTravelsScreen> {
  // final themeData = GetStorage();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.white,

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
                  // indicatorColor: Color.fromARGB(255, 17, 124, 224),
                  //indicator: ,
                  indicator: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'car hire',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Travels',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'flight',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Train',
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
                    CarHire(),
                    CarHire(),
                    CarHire(),
                    CarHire(),
                    // TravelBooking(),
                    // FlightTickets(),
                    // TrainTickets(),
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
