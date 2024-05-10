import 'package:flutter/material.dart';

class ParentPostPage extends StatefulWidget {
  ParentPostPage({Key? key}) : super(key: key);

  @override
  State<ParentPostPage> createState() => _ParentPostPageState();
}

class _ParentPostPageState extends State<ParentPostPage> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,

      // maxChildSize: 1.0,
      // minChildSize: ,

      builder: (_, controller) =>
          // decoration: const BoxDecoration(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(50),
          //     topRight: Radius.circular(50),
          //   ),
          // ),
          Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.shopify),
                    title: Text('update about business'),
                  ),
                  ListTile(
                    leading: Icon(Icons.update),
                    title: Text('update about business'),
                  ),
                  ListTile(
                    leading: Icon(Icons.schedule_outlined),
                    title: Text('Scheduled offers'),
                  ),
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Create Jobs'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
