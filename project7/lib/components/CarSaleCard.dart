import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project7/widgets/CarMiniDetailWidget.dart';
import 'package:project7/widgets/CardBottomBarWidget.dart';

import 'package:project7/widgets/CardTopAccountWidget.dart';
import 'package:project7/widgets/CarouselWidget.dart';
import 'package:project7/widgets/VerifiedSellerWidget.dart';

class CarSaleCard extends StatefulWidget {
  CarSaleCard({Key? key}) : super(key: key);

  @override
  State<CarSaleCard> createState() => _CarSaleCardState();
}

class _CarSaleCardState extends State<CarSaleCard> {
  final String image1 =
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.none,
      child: Column(
        children: [
          CardTopAccountWidget(
              primaryText: 'car sale w',
              secondaryText: 'secondary text',
              dpUrl: image1),
          CarouselWidget(),
          CarMiniDetailWidget(
            carName: 'toyota fielder',
            maxLine: 1,
            usedOrNot: 'locally used',
            yearModel: '2010',
            price: 'kes 1.45M ',
            locationName: 'nairobi, kenya',
          ),
          CardBottomBarWidget(),
        ],
      ),
    );
  }
}
