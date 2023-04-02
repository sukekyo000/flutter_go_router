import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                    context.go('/screenA/1');
                  }),
                  child: const Text("A1"))
            ],
          ),
        ));
  }
}
