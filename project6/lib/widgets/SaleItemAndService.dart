import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaleItemAndService extends StatelessWidget {
  final String day;
  final String workingTime;

  const SaleItemAndService({
    Key? key,
    required this.day,
    required this.workingTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: Colors.black12,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        //wrap with clipRRect
        //borderRadius:BorderRadius.circular(16.0)
        children: [
          Text(
            day,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            //textAlign: TextAlign.end,
            style: GoogleFonts.roboto(
              fontSize: 13,
              color: Colors.green,
              // fontWeight: FontWeight.bold,
              //color: isDarkMode ? Colors.white : Colors.lightBlue,
            ),
          ),
          Text(
            workingTime,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            //textAlign: TextAlign.end,
            style: GoogleFonts.roboto(
              fontSize: 13,
              color: Colors.green,
              // fontWeight: FontWeight.bold,
              //color: isDarkMode ? Colors.white : Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
  }
}
