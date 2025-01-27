import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  final String id;
  final String? extraMessage;

  const DetailsScreen({required this.id, this.extraMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen (ID: $id)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Query Parameter ID: $id', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            if (extraMessage != null)
              Text('Extra Message: $extraMessage', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
