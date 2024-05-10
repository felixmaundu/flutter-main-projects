//###################################
// Container(
//                       height: 100,
//                       child:
//                           ListView(scrollDirection: Axis.horizontal, children: [
//                         InkWell(
//                             child: Container(
//                                 width: 200,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(
//                                       20,
//                                     ),
//                                     color: Colors.green),
//                                 child: Text(
//                                   'lv1',
//                                 ))),
//                         InkWell(
//                             child: Container(
//                                 width: 200,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(
//                                       20,
//                                     ),
//                                     color: Colors.green),
//                                 child: Text(
//                                   'lv1',
//                                 ))),
//                         InkWell(
//                             child: Container(
//                                 width: 200,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(
//                                       20,
//                                     ),
//                                     color: Colors.green),
//                                 child: Text(
//                                   'lv1',
//                                 ))),
//                       ]),
//                     ),




//################################
    //Scaffold(
//       appBar: AppBar(
//         title: Text('setting'),
//       ),
//       body: Column(
//         children: [



          
// //////////// where theme mode code starts  #############
//                 IconButton(
//                   icon: Icon(Icons.restore),
//                   onPressed:
//                       context.read<PreferencesCubit>().deleteAllPreferences,
//                 ),

//                 // _buildThemeSelect(preferences, context),
//                 Card(
//                   child: Column(
//                     children: [
//                       RadioListTile<ThemeMode>(
//                         value: ThemeMode.dark,
//                         groupValue: preferences.themeMode,
//                         title: Text('Dark Mode'),
//                         onChanged: (s) {
//                           context.read<PreferencesCubit>().changePreferences(
//                               preferences.copyWith(themeMode: ThemeMode.dark));
//                         },
//                       ),
//                       RadioListTile<ThemeMode>(
//                         value: ThemeMode.light,
//                         groupValue: preferences.themeMode,
//                         title: Text('Light Mode'),
//                         onChanged: (s) {
//                           context.read<PreferencesCubit>().changePreferences(
//                               preferences.copyWith(themeMode: ThemeMode.light));
//                         },
//                       ),
//                       RadioListTile<ThemeMode>(
//                         value: ThemeMode.system,
//                         groupValue: preferences.themeMode,
//                         title: Text('System'),
//                         onChanged: (s) {
//                           context.read<PreferencesCubit>().changePreferences(
//                               preferences.copyWith(
//                                   themeMode: ThemeMode.system));
//                         },
//                       ),
//                     ],
//                   ),
//                 ),

// //////where it ends #################
//           // SwitchListTile(
//           //   value: true,
//           //   onChanged: (value) {},
//           //   title: Text('theme mode'),
//           // ),

//           // IconButton(
//           //   icon: Icon(Icons.dark_mode),
//           //   onPressed: () {
//           //     Get.isDarkMode
//           //         ? Get.changeTheme(ThemeData.light())
//           //         : Get.changeTheme(ThemeData.dark());
//           //   },
//           // ),

//           // IconButton(
//           //   icon: Icon(Icons.color_lens),
//           //   onPressed: () {
//           //     Get.bottomSheet(
//           //       Container(
//           //         child: Wrap(
//           //           children: <Widget>[
//           //             ListTile(
//           //               leading: Icon(Icons.light_mode_outlined),
//           //               title: Text('light theme'),
//           //               onTap: () => {Get.changeTheme(ThemeData.light())},
//           //             ),
//           //             ListTile(
//           //               leading: Icon(Icons.dark_mode),
//           //               title: Text('dark theme'),
//           //               onTap: () => {Get.changeTheme(ThemeData.dark())},
//           //             ),
//           //             ListTile(
//           //               leading: Icon(Icons.more_vert_outlined),
//           //               title: Text('system theme'),
//           //               onTap: () => {
//           //                 Get.changeThemeMode(
//           //                   ThemeMode.system,
//           //                 ),
//           //               },
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //     );
//           //   },
//           // ),
//         ],
//       ),
//     );
//   }
// }



//################################

// Widget _buildThemeSelect(Preferences preferences, BuildContext context) {
//   return Padding(
//     padding: EdgeInsets.all(8.0),
//     child: Card(
//       child: Column(
//         children: [
//           RadioListTile<ThemeMode>(
//             value: ThemeMode.dark,
//             groupValue: preferences.themeMode,
//             title: Text('Dark Mode'),
//             onChanged: (s) {
//               context.read<PreferencesCubit>().changePreferences(
//                   preferences.copyWith(themeMode: ThemeMode.dark));
//             },
//           ),
//           RadioListTile<ThemeMode>(
//             value: ThemeMode.light,
//             groupValue: preferences.themeMode,
//             title: Text('Light Mode'),
//             onChanged: (s) {
//               context.read<PreferencesCubit>().changePreferences(
//                   preferences.copyWith(themeMode: ThemeMode.light));
//             },
//           ),
//           RadioListTile<ThemeMode>(
//             value: ThemeMode.system,
//             groupValue: preferences.themeMode,
//             title: Text('System'),
//             onChanged: (s) {
//               context.read<PreferencesCubit>().changePreferences(
//                   preferences.copyWith(themeMode: ThemeMode.system));
//             },
//           ),
//         ],
//       ),
//     ),
//   );
// }
//################################3


















// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Scaffold(
//         body: Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//         appBar: AppBar(
//           title: Text("data"),
//         ),
//         drawer: Drawer(
//           child: Center(
//             child: RaisedButton(
//               child: Text("Press"),
//               onPressed: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => Hello1()));
//               },
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//              label: 'home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//              label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'school',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// class Hello1 extends StatelessWidget {
//   const Hello1({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Text("data"),
//         ),
//       ),
//     );
//   }
// }








































// horizontal list view
// import 'package:flutter/widgets.dart';

// body:ListView(children:<widget>[ 
//   Container(
//     height: , 
//     child: ListView( 
//       scrollDirection:axis.horizontal, 
//       children:listofitems(), 

//     ),
//   )
// ])

// List<widget> listofitems(){ 
//   return[ 
//     Icon(Icons.access_alarm,size:80,),
//      Icon(Icons.access_alarm,size:80,),
//       Icon(Icons.access_alarm,size:80,),
//   ]
// }

// just another helpful code

//        body: SingleChildScrollView(
//           child: Column(
//             mainAxisSize:MainAxisSize.min,
//             children: [
//               // can also add some content here
//               // Row(
//               //   children: [
//               //     Container(
//               //       height: 310,
//               //       child: ListView(scrollDirection: Axis.horizontal, children: [
//               //         ClipRRect(
//               //           borderRadius: BorderRadius.circular(8.0),
//               //           child: Column(
//               //             children: [
//               //               Row(
//               //                 children: [
//               //                   Expanded(
//               //                     child: Image.network(
//               //                       'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//               //                       height: 300,
//               //                       width: 400,
//               //                       fit: BoxFit.cover,
//               //                     ),
//               //                   ),
//               //                 ],
//               //               ),
//               //             ],
//               //           ),
//               //         ),
//               //       ]),
//               //     ),
//               //   ],
//               // ),
//               Container(
//                 // height: 250,
//                 // width: 100,
//                 child: Row(children: [
//                   Padding(
//                     padding: const EdgeInsets.all(2.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(2.0),
//                       child: Column(
//                         children: [
//                           // Row(
//                           //   children: [
//                           //     Image.network(
//                           //       'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//                           //       height: 300,
//                           //       width: MediaQuery.of(context).size.width,
//                           //       fit: BoxFit.cover,
//                           //     ),
//                           //     // Container(
//                           //     //   height: 50,
//                           //     //   child: ListTile(
//                           //     //     leading: ClipOval(
//                           //     //       child: Image.network(
//                           //     //         'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//                           //     //         height: 50,
//                           //     //         width: 50,
//                           //     //         fit: BoxFit.cover,
//                           //     //       ),
//                           //     //     ),
//                           //     //     title: Text('Two-line ListTile'),
//                           //     //     // subtitle: Text('Here is a second line'),
//                           //     //     trailing: Icon(Icons.more_vert),
//                           //     //   ),
//                           //     // ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ]),
//               ),
//               Container(
//                 // decoration: BoxDecoration(
//                 //   color: Colors.blueAccent,
//                 //   borderRadius: BorderRadius.circular(5),
//                 // ),
//                 child: TabBar(
//                   isScrollable: true,
//                   unselectedLabelColor: Colors.white.withOpacity(0.3),
//                   indicatorColor: Color.fromARGB(255, 17, 124, 224),
//                   //indicator: ,
//                   // indicator: BoxDecoration(
//                   //   color: Colors.blueAccent,
//                   //   borderRadius: BorderRadius.circular(5),
//                   // ),
//                   tabs: [
//                     Tab(
//                       child: Text(
//                         'All',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         'Today',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         'Check out',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         'Ready sales',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         'On Budget',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: TabBarView(
//                   children: [
//                     AllContent(),
//                     CustomContent(),
//                     Setting(),
//                     Setting(),
//                     Setting(),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }








/////////////////////////////////////////////////////////////////////////
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Sample App';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  // @override
  // Widget build(BuildContext context) {
  //   return Padding(
  //       padding: const EdgeInsets.all(10),
  //       child: ListView(
  //         children: <Widget>[
  //           Container(
  //               alignment: Alignment.center,
  //               padding: const EdgeInsets.all(10),
  //               child: const Text(
  //                 'TutorialKart',
  //                 style: TextStyle(
  //                     color: Colors.blue,
  //                     fontWeight: FontWeight.w500,
  //                     fontSize: 30),
  //               )),
  //           Container(
  //               alignment: Alignment.center,
  //               padding: const EdgeInsets.all(10),
  //               child: const Text(
  //                 'Sign in',
  //                 style: TextStyle(fontSize: 20),
  //               )),
  //           Container(
  //             padding: const EdgeInsets.all(10),
  //             child: TextField(
  //               controller: nameController,
  //               decoration: const InputDecoration(
  //                 border: OutlineInputBorder(),
  //                 labelText: 'User Name',
  //               ),
  //             ),
  //           ),
  //           Container(
  //             padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
  //             child: TextField(
  //               obscureText: true,
  //               controller: passwordController,
  //               decoration: const InputDecoration(
  //                 border: OutlineInputBorder(),
  //                 labelText: 'Password',
  //               ),
  //             ),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               //forgot password screen
  //             },
  //             child: const Text(
  //               'Forgot Password',
  //             ),
  //           ),
  //           Container(
  //               height: 50,
  //               padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
  //               child: ElevatedButton(
  //                 child: const Text('Login'),
  //                 onPressed: () {
  //                   print(nameController.text);
  //                   print(passwordController.text);
  //                 },
  //               )),
  //           Row(
  //             children: <Widget>[
  //               const Text('Does not have account?'),
  //               TextButton(
  //                 child: const Text(
  //                   'Sign in',
  //                   style: TextStyle(fontSize: 20),
  //                 ),
  //                 onPressed: () {
  //                   //signup screen
  //                 },
  //               )
  //             ],
  //             mainAxisAlignment: MainAxisAlignment.center,
  //           ),
  //         ],
  //       ));
  // }
// }





//large and medium tab bar
/////////////////////////////////////////////////////////////////////////////
///
///import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   /// List of Tab Bar Item
//   List<String> items = [
//     "Home",
//     "Explore",
//     "Search",
//     "Feed",
//     "Post",
//     "Activity",
//     "Setting",
//     "Profile",
//   ];

//   /// List of body icon
//   List<IconData> icons = [
//     Icons.home,
//     Icons.explore,
//     Icons.search,
//     Icons.feed,
//     Icons.post_add,
//     Icons.local_activity,
//     Icons.settings,
//     Icons.person
//   ];
//   int current = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       /// APPBAR
//       // appBar: AppBar(
//       //   centerTitle: true,
//       //   backgroundColor: Colors.white,
//       //   title: Text(
//       //     "Custom TabBar",
//       //     style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
//       //   ),
//       // ),
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar.medium(
//             //backgroundColor: Colors.white,
//             leading: IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.menu),
//             ),
//             title: Text('Cars.com'),
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.more_vert),
//               )
//             ],
//           ),
//           SliverToBoxAdapter(
//               child: Container(
//             child: Container(
//               width: 300,
//               height: MediaQuery.of(context).size.width,
//               margin: const EdgeInsets.all(5),
//               child: Column(
//                 children: [
//                   /// CUSTOM TABBAR
//                   SizedBox(
//                     width: double.infinity,
//                     height: 60,
//                     child: ListView.builder(
//                         physics: const BouncingScrollPhysics(),
//                         itemCount: items.length,
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (ctx, index) {
//                           return Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     current = index;
//                                   });
//                                 },
//                                 child: AnimatedContainer(
//                                   duration: const Duration(milliseconds: 300),
//                                   margin: const EdgeInsets.all(5),
//                                   width: 80,
//                                   height: 45,
//                                   decoration: BoxDecoration(
//                                     color: current == index
//                                         ? Colors.white70
//                                         : Colors.white54,
//                                     borderRadius: current == index
//                                         ? BorderRadius.circular(15)
//                                         : BorderRadius.circular(10),
//                                     border: current == index
//                                         ? Border.all(
//                                             color: Colors.deepPurpleAccent,
//                                             width: 2)
//                                         : null,
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                       items[index],
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           color: current == index
//                                               ? Colors.black
//                                               : Colors.grey),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Visibility(
//                                   visible: current == index,
//                                   child: Container(
//                                     width: 5,
//                                     height: 5,
//                                     decoration: const BoxDecoration(
//                                         color: Colors.deepPurpleAccent,
//                                         shape: BoxShape.circle),
//                                   ))
//                             ],
//                           );
//                         }),
//                   ),

//                   /// MAIN BODY
//                   Container(
//                     margin: const EdgeInsets.only(top: 30),
//                     width: double.infinity,
//                     height: 550,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           icons[current],
//                           size: 200,
//                           color: Colors.deepPurple,
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           items[current],
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               fontSize: 30,
//                               color: Colors.deepPurple),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ))
//         ],
//       ),
//     );
//   }
// }


      //     Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     margin: const EdgeInsets.all(5),
      //     child: Column(
      //       children: [
      //         /// CUSTOM TABBAR
      //         SizedBox(
      //           width: double.infinity,
      //           height: 60,
      //           child: ListView.builder(
      //               physics: const BouncingScrollPhysics(),
      //               itemCount: items.length,
      //               scrollDirection: Axis.horizontal,
      //               itemBuilder: (ctx, index) {
      //                 return Column(
      //                   children: [
      //                     GestureDetector(
      //                       onTap: () {
      //                         setState(() {
      //                           current = index;
      //                         });
      //                       },
      //                       child: AnimatedContainer(
      //                         duration: const Duration(milliseconds: 300),
      //                         margin: const EdgeInsets.all(5),
      //                         width: 80,
      //                         height: 45,
      //                         decoration: BoxDecoration(
      //                           color: current == index
      //                               ? Colors.white70
      //                               : Colors.white54,
      //                           borderRadius: current == index
      //                               ? BorderRadius.circular(15)
      //                               : BorderRadius.circular(10),
      //                           border: current == index
      //                               ? Border.all(
      //                                   color: Colors.deepPurpleAccent, width: 2)
      //                               : null,
      //                         ),
      //                         child: Center(
      //                           child: Text(
      //                             items[index],
      //                             style: TextStyle(
      //                                 fontWeight: FontWeight.w500,
      //                                 color: current == index
      //                                     ? Colors.black
      //                                     : Colors.grey),
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                     Visibility(
      //                         visible: current == index,
      //                         child: Container(
      //                           width: 5,
      //                           height: 5,
      //                           decoration: const BoxDecoration(
      //                               color: Colors.deepPurpleAccent,
      //                               shape: BoxShape.circle),
      //                         ))
      //                   ],
      //                 );
      //               }),
      //         ),

      //         /// MAIN BODY
      //         Container(
      //           margin: const EdgeInsets.only(top: 30),
      //           width: double.infinity,
      //           height: 550,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Icon(
      //                 icons[current],
      //                 size: 200,
      //                 color: Colors.deepPurple,
      //               ),
      //               const SizedBox(
      //                 height: 10,
      //               ),
      //               Text(
      //                 items[current],
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.w500,
      //                     fontSize: 30,
      //                     color: Colors.deepPurple),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),

//##############################################
// working top tabs
// import 'package:flutter/material.dart';
// import 'package:project6/tabs/top/AllContent.dart';
// import 'package:project6/tabs/top/CustomContent.dart';
// import 'package:project6/tabs/top/Setting.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   /// List of Tab Bar Item
//   List<String> items = [
//     "All",
//     "New",
//     // "Search",
//     // "Feed",
//     // "Post",
//     // "Activity",
//     // "Setting",
//     // "Profile",
//   ];

//   /// List of body icon
//   List<IconData> icons = [
//     Icons.home,
//     Icons.explore,
//     // Icons.search,
//     // Icons.feed,
//     // Icons.post_add,
//     // Icons.local_activity,
//     // Icons.settings,
//     // Icons.person
//   ];
//   List pages = [
//     HomeScreen(),
//     // SearchScreen(),
//     // PostScreen(),
//     // NotificationScreen(),
//     // MessagesScreen()
//   ];
//   int current = 0;

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 5,
//       child: Scaffold(
//         backgroundColor: Colors.white,

//         /// APPBAR
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           title: Text(
//             "Custom TabBar",
//             style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
//           ),
//         ),
//         body: Column(
//           children: [
//             // can also add some content here

//             TabBar(
//               isScrollable: true,
//               unselectedLabelColor: Colors.white.withOpacity(0.3),
//               indicatorColor: Colors.white,
//               // indicator: BoxDecoration(
//               //   color: Colors.blueAccent,
//               //   borderRadius: BorderRadius.circular(5),
//               // ),
//               tabs: [
//                 Tab(
//                   //Text('All')
//                   // icon: Icon(
//                   //   Icons.home,
//                   //   color: Colors.deepPurple,
//                   // ),
//                   child: Text(
//                     'All',
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   //Text('Today')
//                   // icon: Icon(
//                   //   Icons.settings,
//                   //   color: Colors.deepPurple,
//                   // ),
//                   child: Text(
//                     'Today',
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   //Text('Check out'),
//                   // icon: Icon(
//                   //   Icons.person,
//                   //   color: Colors.deepPurple,
//                   // ),
//                   child: Text(
//                     'Check out',
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   //Text('Check out'),
//                   // icon: Icon(
//                   //   Icons.person,
//                   //   color: Colors.deepPurple,
//                   // ),
//                   child: Text(
//                     'Check out',
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   //Text('Check out'),
//                   // icon: Icon(
//                   //   Icons.person,
//                   //   color: Colors.deepPurple,
//                   // ),
//                   child: Text(
//                     'Check out',
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   AllContent(),
//                   CustomContent(),
//                   Setting(),
//                   Setting(),
//                   Setting(),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

