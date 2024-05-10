import 'package:flutter/material.dart';
import 'package:project6/components/DrawerHeaderWidget.dart';
// import 'package:project6/tabs/drawer/DrawerItem.dart';
import 'package:project6/tabs/drawer/drawerPages/People.dart';
import 'package:project6/tabs/drawer/drawerPages/Setting.dart';

class HomeDrawer extends StatefulWidget {
  HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      //color: Colors.white,
      child: SafeArea(
        child: Padding(
          // padding: const EdgeInsets.all(8.0).copyWith(top: 20),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              headerWidget(),
              SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('person'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => People(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Setting(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
