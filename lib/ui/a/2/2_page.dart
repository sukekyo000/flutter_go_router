import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class A2Page extends StatelessWidget {
  const A2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("A2ページ"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <ElevatedButton>[
              ElevatedButton(
                onPressed: () => context.go('/screenA'),
                child: const Text('Ahome'),
              ),
            ],
          ),
        ));
  }
}
