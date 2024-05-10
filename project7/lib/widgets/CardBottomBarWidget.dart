import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBottomBarWidget extends StatelessWidget {
  const CardBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.near_me_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     TextButton(
            //       onPressed: () {
            //         // Perform some action
            //       },
            //       child: Text(
            //         'ACTION 1',
            //         style: GoogleFonts.roboto(
            //           fontSize: 13,
            //           // fontWeight: FontWeight.bold,
            //           //color: Color(0xFF6200EE)
            //         ),
            //       ),
            //     ),
            //     TextButton(
            //       onPressed: () {
            //         // Perform some action
            //       },
            //       child: Text(
            //         'ACTION 2',
            //         style: GoogleFonts.roboto(
            //           fontSize: 13,
            //           // fontWeight: FontWeight.bold,
            //           //color: Color(0xFF6200EE)
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ],
    );
  }
}
