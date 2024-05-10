import 'package:flutter/material.dart';

Widget headerWidget() {
  const url =
      'https://media.istockphoto.com/photos/little-kids-schoolchildren-pupils-students-running-hurrying-to-the-picture-id1338737959?b=1&k=20&m=1338737959&s=170667a&w=0&h=Wj4IEck0-UYQquyOfnORvotapuarDJ4fABPDm-9ITV0=';
  return Row(
    children: [
      CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(url),
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'person name',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'felo@gmail.com',
            style: TextStyle(
              fontSize: 14,
            ),
          )
        ],
      )
    ],
  );
}
