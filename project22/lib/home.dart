import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project22/screens/bottom_tabs/HomePage.dart';
import 'package:project22/screens/bottom_tabs/ParentPostPage.dart';
import 'package:project22/utils/DrawerComponent.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  void changePage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void _openParentPostPage() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        // isScrollControlled: true,
        context: context,
        builder: (context) => ParentPostPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.account_circle,
                color: Colors.indigo,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        backgroundColor:
            currentIndex == 3 ? const Color(0xffF7F8FA) : Colors.white,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),

      //drawer
      //devider thickness 2

      drawer: DrawerComponent(),

      /// body use  Stack(children[])
      body: <Widget>[
        HomePage(),
        const Text('search'),
        // ParentPostPage(),
        Text('post'),
        const Text('notifications'),
        const Text('Messages'),
      ][currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Theme.of(context).bottomAppBarColor == Brightness.light
        //     ? Colors.white
        //     : Colors.black38,
        unselectedFontSize: 0,

        selectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.white,
        items: [
          const BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            //icon: Icon(Icons.add),
            icon: IconButton(
                onPressed: () {
                  _openParentPostPage();
                },
                icon: const Icon(Icons.add)),
            label: 'Post',
          ),
          const BottomNavigationBarItem(
            // icon: Icon(Icons.notifications_active_outlined),
            icon: Icon(Icons.notifications_active),
            label: 'Notification',
          ),
          const BottomNavigationBarItem(
            // icon: Icon(Icons.notifications_active_outlined),
            icon: Icon(Icons.email),
            label: 'Notification',
          ),
          // BottomNavigationBarItem(
          //   icon: CircleAvatar(
          //     key: UniqueKey(),
          //     radius: 17,
          //     // backgroundColor: Colors.black12,
          //     backgroundImage: const CachedNetworkImageProvider(
          //       'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
          //     ),
          //   ),
          //   label: 'Account',
          // ),
        ],
      ),
    );
  }
}
