import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    final myPrimaryStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    final mySecondaryStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Rp2.000.000', style: myPrimaryStyle),
                Text('Delivery Fee', style: mySecondaryStyle),
              ],
            ),
            Column(
              children: [
                Text('19:20-20:00', style: myPrimaryStyle),
                Text('Delivery Time', style: mySecondaryStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
