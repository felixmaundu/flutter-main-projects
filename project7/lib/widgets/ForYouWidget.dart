import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project7/widgets/HeadingAndViewAllWidget.dart';
import 'package:project7/widgets/SingleImageWidget.dart';

class ForYouWidget extends StatelessWidget {
  // final String categoryName;

  const ForYouWidget({
    Key? key,
    // required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String image1 =
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80';

    return Column(children: [
      HeadingAndViewAllWidget(categoryName: 'For You'),
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
      )
    ]);
  }
}
