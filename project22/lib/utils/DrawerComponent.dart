import 'package:flutter/material.dart';

class DrawerComponent extends StatefulWidget {
  DrawerComponent({Key? key}) : super(key: key);

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // for resizing the width of drawer
      width: MediaQuery.of(context).size.width / 1.15,
      child: Drawer(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Container(
                  height: 142,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/ten_news.png",
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: const Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Settings',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'About',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'Log Out',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 45,
            ),
            Material(
              borderRadius: BorderRadius.circular(500),
              child: InkWell(
                borderRadius: BorderRadius.circular(500),
                splashColor: Colors.black45,
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    'v1.0.1',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      color: Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
