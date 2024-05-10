import 'package:flutter/material.dart';
import 'package:project7/widgets/CarDetailHorizontalScroll.dart';
import 'package:project7/widgets/ForYouWidget.dart';
import 'package:project7/widgets/HeadingAndViewAllWidget.dart';
import 'package:project7/widgets/SingleImageWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class OverViewComponent extends StatefulWidget {
  OverViewComponent({Key? key}) : super(key: key);

  @override
  State<OverViewComponent> createState() => _OverViewComponentState();
}

class _OverViewComponentState extends State<OverViewComponent> {
  final String image1 =
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80';

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 370,
      // width: 200,
      child: Padding(
        padding: const EdgeInsets.all(3.0).copyWith(top: 3),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ForYouWidget(),
            HeadingAndViewAllWidget(categoryName: 'New'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 370,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          SingleImageWidget(
                            imageUrl: image1,
                            imageHeight: 280,
                            imageWidth: 200,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '1.5M kes',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Automatic',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text(
                                    'Mombasa kenya',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          SingleImageWidget(
                            imageUrl: image1,
                            imageHeight: 280,
                            imageWidth: 200,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '1.5M kes',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Automatic',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text(
                                    'Mombasa kenya',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          SingleImageWidget(
                            imageUrl: image1,
                            imageHeight: 280,
                            imageWidth: 200,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '1.5M kes',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Automatic',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text(
                                    'Mombasa kenya',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
