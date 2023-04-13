import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../1/1_page.dart';

class AHomePage extends StatelessWidget {
  const AHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Aトップページ"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: (() {
                    pushNewScreen<dynamic>(
                      context,
                      screen: const A1Page(),
                    );
                  }),
                  child: const Text("A1"))
            ],
          ),
        ));
  }
}
