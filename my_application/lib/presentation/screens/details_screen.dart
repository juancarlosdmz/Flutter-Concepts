// presentation/screens/details_screen.dart
import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  final int counter;

  const DetailsScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Details Screen"),
      ),
      body: Center(child: Text('Counter Value: $counter', style: const TextStyle(fontSize: 24))),
    );
  }
}
