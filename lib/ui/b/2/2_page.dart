import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class B2Page extends StatelessWidget {
  const B2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("B2ページ"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <ElevatedButton>[
              ElevatedButton(
                onPressed: () => context.go('/screenB'),
                child: const Text('Bhome'),
              ),
            ],
          ),
        ));
  }
}
