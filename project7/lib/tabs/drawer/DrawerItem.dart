/*
not in use. just for reference
*/

import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onPressed;

  DrawerItem(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: SizedBox(
      height: 40,
      child: Row(children: [
        Icon(
          icon,
          size: 20,
        ),
        SizedBox(width: 40),
        Text(name,
            style: TextStyle(
              fontSize: 20,
            ))
      ]),
    ));
  }
}

//  Container(
//           child: ListTile(
//             leading: Icon(
//               icon,
//               size: 20,
//             ),
//             title: Text(
//               name,
//               style: TextStyle(
//                 fontSize: 20,
//               ),
//             ),
//           ),
//         ),



//   void onItemPressed(BuildContext context, {required int index}) {
//     Navigator.pop(context);
//     switch (index) {
//       case 0:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => People(),
//           ),
//         );
//         break;
//       case 1:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => People(),
//           ),
//         );
//         break;
//       default:
//         Navigator.pop(context);
//         break;
//     }
//   }
// }




// how to call the file 

              // DrawerItem(
              //   name: 'name',
              //   icon: Icons.people,
              //   onPressed: () => onItemPressed(context, index: 0),
              // ),
              // DrawerItem(
              //   name: 'setting',
              //   icon: Icons.people,
              //   onPressed: () => onItemPressed(context, index: 1),
              // ),