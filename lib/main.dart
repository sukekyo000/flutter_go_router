import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'ui/a/1/1_page.dart';
import 'ui/a/2/2_page.dart';
import 'ui/a/home/a_home_page.dart';
import 'ui/b/1/1_page.dart';
import 'ui/b/2/2_page.dart';
import 'ui/b/home/b_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScaffoldWithNavBar(),
    );
  }
}

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      AHomePage(),
      BHomePage(),
    ];

    return PersistentTabView(
      context,
      screens: screens,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: 'A Screen',
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.business),
          title: 'B Screen',
        ),
      ],
      navBarStyle: NavBarStyle.style1,
    );
  }
}
