import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfficialLinkWidget extends StatelessWidget {
  final String url;
  final String labelText;

  const OfficialLinkWidget({
    Key? key,
    required this.url,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.north_east),
      label: Text(
        labelText,
        style: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.w400, //roboto
        ),
      ),
    );
  }
}
        //Container(
        // color: Colors.deepOrange,

        //child: