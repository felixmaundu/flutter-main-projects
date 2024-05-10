import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:project7/tabs/subTop/CarHire.dart';

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
      length: 3,
      initialIndex: 1,
      child: SafeArea(
        child: Scaffold(
          // backgroundColor: Theme.of(context).backgroundColor == Brightness.light
          //     ? Colors.white
          //     : Colors.black,

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
                  // indicator: BoxDecoration(
                  //   color: Colors.blueAccent,
                  //   borderRadius: BorderRadius.circular(35),
                  // ),
                  tabs: [
                  
                    Tab(
                      child: Text(
                        'Travels',
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
                        'flight',
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
                        'Train',
                        style: Theme.of(context).brightness == Brightness.light
                            ? GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 15,
                              )
                            : GoogleFonts.roboto(color: Colors.white),
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
