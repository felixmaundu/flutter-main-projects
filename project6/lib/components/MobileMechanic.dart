import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:project6/widgets/CardTopAccountWidget.dart';
import 'package:project6/widgets/SingleImageWidget.dart';

class MobileMechanic extends StatefulWidget {
  MobileMechanic({Key? key}) : super(key: key);

  @override
  State<MobileMechanic> createState() => _MobileMechanicState();
}

class _MobileMechanicState extends State<MobileMechanic> {
  final String image1 =
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80';

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Text('Mobile Mechanic'.toUpperCase(),
                      style: GoogleFonts.openSans(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold, //roboto
                      )),
                ],
              ),
            ),
          ),
          SingleImageWidget(imageUrl: image1),
          CardTopAccountWidget(
              primaryText: 'mobile Mechanic',
              secondaryText: 'secondary text',
              dpUrl: image1),
          ExpansionTile(
            //title: Text('see more'),
            //trailing: ,
            //subtitle: ,
            //backgroundColor: ,
            leading: IconButton(
                onPressed: () {}, icon: Icon(Icons.location_on_outlined)),
            //trailing: Icon(Icons.more_vert),
            title: Text('Nairobi, kenya',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold, //roboto
                )),
            subtitle: Text(
              'Secondary Text',
              style: GoogleFonts.openSans(
                  //color: Colors.black.withOpacity(0.6)
                  ),
            ),
            children: [
              ListTile(
                title: Text('hey there'),
              ),
              ListTile(
                title: Text('hey there'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
