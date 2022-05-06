import 'package:fitify_flutter/widget_feed.dart';
import 'package:fitify_flutter/connect_with_new.dart';
import 'package:fitify_flutter/maintainblue.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static const title = 'Fitify';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      FeedView(),
      MaintananceBlue(),
      ScreenConnect(),
    ];
    return MaterialApp(
      title: MyApp.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          selectedColorOpacity: 0,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.newspaper),
              title: const Text("Feed"),
              selectedColor: Colors.purple,
            ),

            /// Likes

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          isExtended: true,
          backgroundColor: Colors.red,
          onPressed: () {
            _currentIndex = 2;
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
        body: pages[_currentIndex],
      ),
    );
  }
}
