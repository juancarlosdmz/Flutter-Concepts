import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => context.go('/dashboard/profile'),
                child: const Text('Go to Dashboard'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () =>
                    context.push('/details?id=123', extra: 'Hello from HomeScreen'),
                child: const Text('Go to Details with Query Parameters'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
