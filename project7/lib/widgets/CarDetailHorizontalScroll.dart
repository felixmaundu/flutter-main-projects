import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CarDetailHorizontalScroll extends StatelessWidget {
  final String detailName;
  final IconData iconType;
  final String sellerData;

  CarDetailHorizontalScroll(
      {required this.detailName,
      required this.iconType,
      required this.sellerData});

  final CacheManager cacheManager = CacheManager(
    Config(
      'images_key',
      maxNrOfCacheObjects: 20,
      stalePeriod: Duration(days: 3),
    ),
  );

  // const CardTopAccountWidget({super.key, required this.primaryText, required this.secondaryText, required this.dpUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 8, 9, 41),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            detailName,
            style: GoogleFonts.openSans(
              // fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold, //roboto
            ),
          ),
          Icon(
            iconType,
            size: 20,
            color: Colors.orange,
          ),
          Text(
            sellerData,
            style: GoogleFonts.openSans(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold, //roboto
            ),
          ),
        ],
      ),
    );
  }
}
