import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BHomePage extends StatelessWidget {
  const BHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bトップページ"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: (() {
                    context.go('/screenB/1');
                  }),
                  child: const Text("B1"))
            ],
          ),
        ));
  }
}
