import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifiedSellerWidget extends StatelessWidget {
  const VerifiedSellerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 20,
          width: 100,
          // color: Colors.deepPurple,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text('Verified Seller',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400, //roboto
                )),
          ),
        ),
      ],
    );
  }
}
        //Container(
        // color: Colors.deepOrange,

        //child: