import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/screenA',
  routes: <RouteBase>[
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: [
          GoRoute(
              path: '/screenA',
              builder: (BuildContext context, GoRouterState state) {
                return const AHomePage();
              },
              routes: [
                GoRoute(
                  path: '1',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: A1Page());
                  },
                ),
                GoRoute(
                  path: '2',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: A2Page());
                  },
                ),
              ]),
          GoRoute(
              path: '/screenB',
              builder: (BuildContext context, GoRouterState state) {
                return const BHomePage();
              },
              routes: [
                GoRoute(
                  path: '1',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: B1Page());
                  },
                ),
                GoRoute(
                  path: '2',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: B2Page());
                  },
                ),
              ]),
        ]),
  ],
);

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'A Screen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'B Screen',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) {
          print(idx);
          _onItemTapped(idx, context);
        },
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith('/screenA')) {
      return 0;
    }
    if (location.startsWith('/screenB')) {
      return 1;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/screenA');
        break;
      case 1:
        GoRouter.of(context).go('/screenB');
        break;
    }
  }
}
