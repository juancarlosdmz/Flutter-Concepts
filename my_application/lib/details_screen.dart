import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_application/detail_screens_arguments.dart';

class DetailsScreen extends StatelessWidget {
  final DetailsScreenArguments arguments;

  const DetailsScreen({required this.arguments, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(arguments.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                arguments.message,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Pass data back to the HomeScreen
                  context.pop('Data from DetailsScreen');
                },
                child: const Text('Send Back to Home Screen'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Go back without returning data
                  context.pop();
                },
                child: const Text('Go Back Without Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
