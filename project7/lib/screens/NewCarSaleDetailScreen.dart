import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project7/components/GoogleMapsComponent.dart';
import 'package:project7/widgets/CarDetailHorizontalScroll.dart';
import 'package:project7/widgets/CarouselWidget.dart';
import 'package:project7/widgets/OfficialLinkWidget.dart';
import 'package:project7/widgets/ReadMoreWidget.dart';
import 'package:project7/widgets/WorkingHoursColumn.dart';

class NewCarSaleDetailScreen extends StatefulWidget {
  NewCarSaleDetailScreen({Key? key}) : super(key: key);

  @override
  State<NewCarSaleDetailScreen> createState() => _NewCarSaleDetailScreenState();
}

class _NewCarSaleDetailScreenState extends State<NewCarSaleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark_border),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CarouselWidget(),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Toyota prado land cruiser Tx ',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'price: 4575000 kes',
                      style: GoogleFonts.openSans(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CarDetailHorizontalScroll(
                          detailName: 'Millage',
                          iconType:
                              Icons.speed_outlined, //multiline_chart_sharp
                          sellerData: '100000 km'),
                      SizedBox(
                        width: 4,
                      ),
                      CarDetailHorizontalScroll(
                          detailName: 'Engine',
                          iconType: Icons.animation_outlined,
                          sellerData: '2000 cc'),
                      SizedBox(
                        width: 4,
                      ),
                      CarDetailHorizontalScroll(
                          detailName: 'Transmission',
                          iconType: Icons.model_training_sharp,
                          sellerData: 'automatic'),
                      SizedBox(
                        width: 4,
                      ),
                      CarDetailHorizontalScroll(
                          detailName: 'Year',
                          iconType: Icons.data_exploration,
                          sellerData: '2009'),
                      SizedBox(
                        width: 4,
                      ),
                      CarDetailHorizontalScroll(
                          detailName: 'Seats',
                          iconType: Icons.airline_seat_legroom_normal,
                          sellerData: '5'),
                      SizedBox(
                        width: 4,
                      ),
                      CarDetailHorizontalScroll(
                          detailName: 'Fuel Liters',
                          iconType: Icons.abc,
                          sellerData: '5.5 L'),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GoogleMapsComponent(),
                      ),
                    );
                  },
                  icon: Icon(Icons.location_on_outlined),
                  label: Text('Nairobi westlands,kenya'),
                ),
                //trailing: Icon(Icons.arrow_right_alt),
              ),
              ReadMoreWidget(
                readMoreText: 'whole explatantion here',
                trimLineNumber: 10,
              ),
              OfficialLinkWidget(
                url: 'some link here',
                labelText: 'Visit official site',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
