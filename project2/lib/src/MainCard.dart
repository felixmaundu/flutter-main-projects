import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,

        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipOval(
                    child: Image.network(
                      "https://media.istockphoto.com/photos/sports-car-rim-detail-closeup-picture-id1324046043?b=1&k=20&m=1324046043&s=170667a&w=0&h=U9MMktA_2MgyO_EYd0WKe6NuwChovk3EIBmJ8QYB1vk=",
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                      //color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('kenya motors',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                          Text('Yard.cars.suvs.latest.kenya used',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(children: [
              Image.network(
                  "https://media.istockphoto.com/photos/generic-modern-sports-car-in-concrete-garage-picture-id1307086563?b=1&k=20&m=1307086563&s=170667a&w=0&h=sPx3GPlfoe6NT_ZO4XyAT5eP1QbbUf5rZlSrqQmX2Ig=",
                  height: 220,
                  fit: BoxFit.fill)
            ]),
            Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 1, 10, 1),
                child: Row(
                  children: [
                    Expanded(
                      child: Text('subaru forester',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.north_east_outlined,
                            size: 12.0,
                          ),
                          label: const Text('promoted')),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Text('ksh 1,750,000',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: 17, color: Colors.green)),
                    const Spacer(),
                    Text('Millage 1,200,000 km',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: 17, color: Colors.green)),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.location_on_outlined),
                    color: const Color.fromARGB(255, 29, 8, 8),
                    onPressed: () {
                      // Perform some action
                    },
                  ),
                  Text('Westlands,Nairobi',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                      )),
                ],
              )
            ]),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  color: const Color.fromARGB(255, 29, 8, 8),
                  onPressed: () {
                    // Perform some action
                  },
                ),
                Text('567',
                    style:
                        GoogleFonts.roboto(fontSize: 17, color: Colors.green)),
                IconButton(
                  icon: const Icon(Icons.comment_bank_rounded),
                  color: const Color.fromARGB(255, 29, 8, 8),
                  onPressed: () {
                    // Perform some action
                  },
                ),
                Text('376',
                    style:
                        GoogleFonts.roboto(fontSize: 17, color: Colors.green)),
                IconButton(
                  icon: const Icon(Icons.near_me),
                  color: const Color.fromARGB(255, 29, 8, 8),
                  onPressed: () {
                    // Perform some action
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70),
                  child: IconButton(
                    icon: const Icon(Icons.share),
                    color: const Color.fromARGB(255, 29, 8, 8),
                    onPressed: () {
                      // Perform some action
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        // child: const SizedBox(
        //   //width: 300,
        //   height: 100,
        //   child: Column(
        //     children: [
        //       child:Center(child: Text('hello ')),
        //     ],
        //   ),
        //),
      ),
    );
  }
}



//  const images = [
//         'https://media.istockphoto.com/photos/silver-roadster-sports-car-moving-at-high-speed-along-racetrack-at-picture-id1354209384?b=1&k=20&m=1354209384&s=170667a&w=0&h=S87gR4CQ4OrwaqxL-YiZ2-mFsKf1MzWOUG9qsC_N5-4=',
//         'https://media.istockphoto.com/photos/generic-modern-sports-car-in-concrete-garage-picture-id1307086563?b=1&k=20&m=1307086563&s=170667a&w=0&h=sPx3GPlfoe6NT_ZO4XyAT5eP1QbbUf5rZlSrqQmX2Ig=',
//         'https://media.istockphoto.com/photos/sports-car-rim-detail-closeup-picture-id1324046043?b=1&k=20&m=1324046043&s=170667a&w=0&h=U9MMktA_2MgyO_EYd0WKe6NuwChovk3EIBmJ8QYB1vk='
//     ]
//     'https://media.istockphoto.com/photos/silver-roadster-sports-car-moving-at-high-speed-along-racetrack-at-picture-id1354209384?b=1&k=20&m=1354209384&s=170667a&w=0&h=S87gR4CQ4OrwaqxL-YiZ2-mFsKf1MzWOUG9qsC_N5-4=',
//     'https://media.istockphoto.com/photos/generic-modern-sports-car-in-concrete-garage-picture-id1307086563?b=1&k=20&m=1307086563&s=170667a&w=0&h=sPx3GPlfoe6NT_ZO4XyAT5eP1QbbUf5rZlSrqQmX2Ig=',
//     'https://media.istockphoto.com/photos/sports-car-rim-detail-closeup-picture-id1324046043?b=1&k=20&m=1324046043&s=170667a&w=0&h=U9MMktA_2MgyO_EYd0WKe6NuwChovk3EIBmJ8QYB1vk=',
//     'https://media.istockphoto.com/photos/silver-roadster-sports-car-moving-at-high-speed-along-racetrack-at-picture-id1354209384?b=1&k=20&m=1354209384&s=170667a&w=0&h=S87gR4CQ4OrwaqxL-YiZ2-mFsKf1MzWOUG9qsC_N5-4=',
//     'https://media.istockphoto.com/photos/generic-modern-sports-car-in-concrete-garage-picture-id1307086563?b=1&k=20&m=1307086563&s=170667a&w=0&h=sPx3GPlfoe6NT_ZO4XyAT5eP1QbbUf5rZlSrqQmX2Ig=',
//     'https://media.istockphoto.com/photos/sports-car-rim-detail-closeup-picture-id1324046043?b=1&k=20&m=1324046043&s=170667a&w=0&h=U9MMktA_2MgyO_EYd0WKe6NuwChovk3EIBmJ8QYB1vk=',
//     'https://media.istockphoto.com/photos/silver-roadster-sports-car-moving-at-high-speed-along-racetrack-at-picture-id1354209384?b=1&k=20&m=1354209384&s=170667a&w=0&h=S87gR4CQ4OrwaqxL-YiZ2-mFsKf1MzWOUG9qsC_N5-4=',
//     'https://media.istockphoto.com/photos/generic-modern-sports-car-in-concrete-garage-picture-id1307086563?b=1&k=20&m=1307086563&s=170667a&w=0&h=sPx3GPlfoe6NT_ZO4XyAT5eP1QbbUf5rZlSrqQmX2Ig=',
//     'https://media.istockphoto.com/photos/sports-car-rim-detail-closeup-picture-id1324046043?b=1&k=20&m=1324046043&s=170667a&w=0&h=U9MMktA_2MgyO_EYd0WKe6NuwChovk3EIBmJ8QYB1vk=',
//     'https://media.istockphoto.com/photos/silver-roadster-sports-car-moving-at-high-speed-along-racetrack-at-picture-id1354209384?b=1&k=20&m=1354209384&s=170667a&w=0&h=S87gR4CQ4OrwaqxL-YiZ2-mFsKf1MzWOUG9qsC_N5-4=',
//     'https://media.istockphoto.com/photos/generic-modern-sports-car-in-concrete-garage-picture-id1307086563?b=1&k=20&m=1307086563&s=170667a&w=0&h=sPx3GPlfoe6NT_ZO4XyAT5eP1QbbUf5rZlSrqQmX2Ig=',
//     'https://media.istockphoto.com/photos/sports-car-rim-detail-closeup-picture-id1324046043?b=1&k=20&m=1324046043&s=170667a&w=0&h=U9MMktA_2MgyO_EYd0WKe6NuwChovk3EIBmJ8QYB1vk=',
//     'https://media.istockphoto.com/photos/silver-roadster-sports-car-moving-at-high-speed-along-racetrack-at-picture-id1354209384?b=1&k=20&m=1354209384&s=170667a&w=0&h=S87gR4CQ4OrwaqxL-YiZ2-mFsKf1MzWOUG9qsC_N5-4=',
//     'https://media.istockphoto.com/photos/generic-modern-sports-car-in-concrete-garage-picture-id1307086563?b=1&k=20&m=1307086563&s=170667a&w=0&h=sPx3GPlfoe6NT_ZO4XyAT5eP1QbbUf5rZlSrqQmX2Ig=',
//     'https://media.istockphoto.com/photos/sports-car-rim-detail-closeup-picture-id1324046043?b=1&k=20&m=1324046043&s=170667a&w=0&h=U9MMktA_2MgyO_EYd0WKe6NuwChovk3EIBmJ8QYB1vk='
