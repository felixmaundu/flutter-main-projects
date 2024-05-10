import 'package:flutter/material.dart';
import 'package:project11/screens/top_tabs/HomeTop.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _page = 0;
  //for navigating bottom app bar
  int currentState = 0;
  List<Widget> widgets = [
    // FeedScreen(),
    // SearchScreen(),
    // AddPostScreen(),
    Text('notifications'),
    Text('notifications'),
    Text('notifications'),
    Text('notifications'),
    Text('notifications'),
    // ProfileScreen(
    //     //uid: FirebaseAuth.instance.currentUser!.uid,
    //     ),
  ];

  List<Widget> titleString = [
    // FeedScreen(),
    // SearchScreen(),
    // AddPostScreen(),
    Text('Home page'),
    HomeTop(),
    Text('notifications'),
    Text('notifications'),
    Text('notifications'),
    // ProfileScreen(
    //     //uid: FirebaseAuth.instance.currentUser!.uid,
    //     ),
  ];
  // List<String> titleString = [
  //   "Home page",
  //   "notification",
  //   "notification",
  //   "notification",
  //   "notification"
  // ];
  late PageController pageController; // for tabs animation

  List<Widget> pages = [
    Text('notifications'),
    Text('notifications'),
    Text('notifications'),
    Text('notifications'),
    Text('notifications'),
    // FeedScreen(),
    // const SearchScreen(),
    // AddPostScreen(),
    // const Text('notifications'),
    // ProfileScreen(
    //     //uid: FirebaseAuth.instance.currentUser!.uid,
    //     ),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        extendBodyBehindAppBar: true,
        body: Center(child: pages[currentIndex]),

        // appBar:
        // AppBar(
        //   backgroundColor: Colors.teal,
        //   title: Text("titleString[currentIndex]"),
        // ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  child: Column(
                children: [Text('drawer header')],
              ))
            ],
          ),
        ),

        // body: widgets[currentState],
        //drawer: HomeDrawer(),
        // backgroundColor: Theme.of(context).backgroundColor == Brightness.light
        // ? Colors.white
        // : Colors.black,
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
            const BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Post',
            ),
            const BottomNavigationBarItem(
              // icon: Icon(Icons.notifications_active_outlined),
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                key: UniqueKey(),
                radius: 17,
                // backgroundColor: Colors.black12,
                backgroundImage: const CachedNetworkImageProvider(
                  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                ),
              ),
              label: 'Account',
            ),
          ],
        ),

        // body: Center(

        // );
      ),
    );
  }
}
