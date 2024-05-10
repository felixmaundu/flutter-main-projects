import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:project6/widgets/CardBottomBarWidget.dart';
import 'package:project6/widgets/CardTopAccountWidget.dart';
import 'package:project6/widgets/SingleImageWidget.dart';

class VehicleServices extends StatefulWidget {
  VehicleServices({Key? key}) : super(key: key);

  @override
  State<VehicleServices> createState() => _VehicleServicesState();
}

class _VehicleServicesState extends State<VehicleServices> {
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
      child: Column(
        children: [
          SingleImageWidget(imageUrl: image1),
          CardTopAccountWidget(
              primaryText: 'Vehicle service w',
              secondaryText: 'secondary text',
              dpUrl: image1),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          CardBottomBarWidget(),
        ],
      ),
    );
  }
}
