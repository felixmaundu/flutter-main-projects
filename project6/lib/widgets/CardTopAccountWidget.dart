import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:project6/screens/AccountPageScreen.dart';

class CardTopAccountWidget extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final String dpUrl;

  CardTopAccountWidget(
      {required this.primaryText,
      required this.secondaryText,
      required this.dpUrl});

  final CacheManager cacheManager = CacheManager(
    Config(
      'images_key',
      maxNrOfCacheObjects: 20,
      stalePeriod: Duration(days: 3),
    ),
  );

  // const CardTopAccountWidget({super.key, required this.primaryText, required this.secondaryText, required this.dpUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //title: Text('see more'),
      //trailing: ,
      //subtitle: ,
      //backgroundColor: ,
      leading: InkWell(
        //TODO
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AccountPageScreen(),
            ),
          );
        },
        child: CircleAvatar(
          key: UniqueKey(),
          radius: 22,
          //backgroundColor: Color.fromARGB(137, 51, 50, 50),
          backgroundImage: CachedNetworkImageProvider(dpUrl),
        ),
      ),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.report),
                  title: Text('report'),
                  onTap: () {
                    print('report');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.report),
                  title: Text('report'),
                  onTap: () {
                    print('report');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.report),
                  title: Text('report'),
                  onTap: () {
                    print('report');
                  },
                ),
              ],
            ),
          ),
        ],
        child: Icon(Icons.more_vert),
      ),
      title: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AccountPageScreen(),
            ),
          );
        },
        child: Text(primaryText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.openSans(
              fontSize: 18,
              fontWeight: FontWeight.bold, //roboto
            )),
      ),
      subtitle: Text(
        secondaryText,
        style: GoogleFonts.openSans(
            //color: Colors.black.withOpacity(0.6)
            ),
      ),
    );
  }
}
