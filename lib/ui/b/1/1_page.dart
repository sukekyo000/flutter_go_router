import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class B1Page extends StatelessWidget {
  const B1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("B1ページ"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <ElevatedButton>[
              ElevatedButton(
                onPressed: () => context.go('/screenB/2'),
                child: const Text('B2'),
              ),
              ElevatedButton(
                onPressed: () => context.go('/screena'),
                child: const Text('Ahome'),
              ),
            ],
          ),
        ));
  }
}
