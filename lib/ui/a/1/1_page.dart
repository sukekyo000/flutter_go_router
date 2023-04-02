import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class A1Page extends StatelessWidget {
  const A1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("A1ページ"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <ElevatedButton>[
              ElevatedButton(
                onPressed: () => context.go('/screenA/2'),
                child: const Text('A2'),
              ),
              ElevatedButton(
                onPressed: () => context.go('/screenB/1'),
                child: const Text('B1'),
              ),
            ],
          ),
        ));
  }
}
