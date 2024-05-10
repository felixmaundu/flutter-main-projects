import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ReadMoreWidget extends StatelessWidget {
  final String readMoreText;
  final int trimLineNumber;
  //final String dpUrl;

  const ReadMoreWidget({
    Key? key,
    required this.readMoreText,
    required this.trimLineNumber,
    //required this.dpUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ReadMoreText(
        readMoreText,
        trimLines: trimLineNumber,
        textAlign: TextAlign.justify,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show More',
        trimExpandedText: 'Show less',
        lessStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[500]),
        moreStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[500]),
        style: GoogleFonts.openSans(
            // color: Colors.black.withOpacity(0.6)
            ),
      ),
    );
  }
}
