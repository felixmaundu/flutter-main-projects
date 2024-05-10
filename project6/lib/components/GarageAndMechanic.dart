import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project6/widgets/CardTopAccountWidget.dart';
import 'package:project6/widgets/SingleImageWidget.dart';
import 'package:project6/widgets/WorkingHoursColumn.dart';
import 'package:readmore/readmore.dart';

class GarageAndMechanic extends StatefulWidget {
  GarageAndMechanic({Key? key}) : super(key: key);

  @override
  State<GarageAndMechanic> createState() => _GarageAndMechanicState();
}

class _GarageAndMechanicState extends State<GarageAndMechanic> {
  final String image1 =
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80';

  final CacheManager cacheManager = CacheManager(
    Config(
      'images_key',
      maxNrOfCacheObjects: 20,
      stalePeriod: Duration(days: 3),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardTopAccountWidget(
                primaryText: 'Total Enargies Garage',
                secondaryText: 'Servicing',
                dpUrl: image1),
            SingleImageWidget(imageUrl: image1),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(
                    //color: Colors.black.withOpacity(0.6),
                    ),
              ),
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Name: total mwingi branch ',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          //textAlign: TextAlign.end,
                          style: GoogleFonts.roboto(
                            fontSize: 18,

                            // fontWeight: FontWeight.bold,
                            //color: isDarkMode ? Colors.white : Colors.lightBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    RatingBar(
                      minRating: 1,
                      maxRating: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      //itemCount: 8,
                      //direction: Axis.horizontal,
                      // glowColor: ,
                      // glowColor: ,
                      // glow: false,
                      // updateOnDrag: true,
                      tapOnlyMode: true,
                      // ignoreGestures: true,
                      itemSize: 12,
                      //optional
                      initialRating: 3,
                      allowHalfRating: true,
                      onRatingUpdate: _saveRating,
                      ratingWidget: RatingWidget(
                        //as well can call other widgets
                        full: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        half: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        empty: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Text(
                      '(354)',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      //textAlign: TextAlign.end,
                      style: GoogleFonts.roboto(
                        fontSize: 14,

                        // fontWeight: FontWeight.bold,
                        //color: isDarkMode ? Colors.white : Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Working hours',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.end,
                            style: GoogleFonts.roboto(
                              fontSize: 14, color: Colors.green,
                              // fontWeight: FontWeight.bold,
                              //color: isDarkMode ? Colors.white : Colors.lightBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            WorkingHoursColumn(
                                day: 'Mon', workingTime: '6AM-9PM'),
                            WorkingHoursColumn(
                                day: 'Tue', workingTime: '24 hrs'),
                            WorkingHoursColumn(
                                day: 'Wed', workingTime: '24 hrs'),
                            WorkingHoursColumn(
                                day: 'Thur', workingTime: '24 hrs'),
                            WorkingHoursColumn(
                                day: 'Fri', workingTime: '24 hrs'),
                            WorkingHoursColumn(
                                day: 'Sat', workingTime: '24 hrs'),
                            WorkingHoursColumn(
                                day: 'Sun', workingTime: '24 hrs'),
                          ],
                        ),
                      ),
                    ),

                    ///here
                    ///
                    ///
                    ///
                    ///
                    ///
                    ///
                  ],
                ),
              ],
            ),

            ///here
            ///
            ///
            ///
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: Text(
                    'ACTION 1',
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      // fontWeight: FontWeight.bold,
                      //color: Color(0xFF6200EE),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: Text(
                    'ACTION 2',
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      // fontWeight: FontWeight.bold,
                      //color: Color(0xFF6200EE)
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              //subtitle: ,
              //backgroundColor: ,
              leading: IconButton(
                  onPressed: () {}, icon: Icon(Icons.location_on_outlined)),

              title: Text('Machakos,kenya',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold, //roboto
                  )),
              subtitle: Text(
                'Working Hours',
                style: GoogleFonts.openSans(
                    //color: Colors.black.withOpacity(0.6)
                    ),
              ),
              children: [
                ListTile(
                  title: Text('Other services offered'),
                ),
                ListTile(
                  title: Text('hey there'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _saveRating(double value) {}
}

// class CardMiniBottomBarWidget {
// }
