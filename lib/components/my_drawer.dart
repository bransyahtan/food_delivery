import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_clock_rounded,
              size: 20,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          //list of children
        ],
      ),
    );
  }
}
