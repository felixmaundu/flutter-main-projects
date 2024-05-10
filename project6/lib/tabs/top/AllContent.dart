import 'package:flutter/material.dart';
import 'package:project6/components/AdviceAndSaftyMeasure.dart';
import 'package:project6/components/BookingAndTravel.dart';
import 'package:project6/components/CarSaleCard.dart';
import 'package:project6/components/GarageAndMechanic.dart';
import 'package:project6/components/MobileMechanic.dart';
import 'package:project6/components/NewCarWidgetCaroussel.dart';
import 'package:project6/components/VehicleServices.dart';

class AllContent extends StatefulWidget {
  AllContent({Key? key}) : super(key: key);

  @override
  State<AllContent> createState() => _AllContentState();
}

class _AllContentState extends State<AllContent> {
  @override
  Widget build(BuildContext context) {
    return
        // SingleChildScrollView(
        //   child:
        ListView(
      children: [
        // Container(
        // child:
        Column(
          children: [
            NewCarWidgetCaroussel(),
            CarSaleCard(),
            AdviceAndSaftyMeasure(),
            GarageAndMechanic(),
            MobileMechanic(),
            VehicleServices(),
            BookingAndTravel(),
          ],
        ),
        //),
      ],
      // ),
    );
  }
}
