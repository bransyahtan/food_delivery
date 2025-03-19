import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({required this.child, required this.title, super.key});
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(title),
      flexibleSpace: FlexibleSpaceBar(background: child),
    );
  }
}
