import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingAndViewAllWidget extends StatelessWidget {
  final String categoryName;

  const HeadingAndViewAllWidget({
    Key? key,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                child: Text(
                  categoryName,
                  style: GoogleFonts.roboto(
                    fontSize: 27,
                    color: Colors.green,
                    // fontWeight: FontWeight.bold,
                    //color: isDarkMode ? Colors.white : Colors.lightBlue,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'View all',
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.green,
                          // fontWeight: FontWeight.bold,
                          //color: isDarkMode ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
