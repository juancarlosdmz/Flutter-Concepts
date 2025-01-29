// presentation/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/counter_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final counterNotifier = ref.read(counterProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Layered Architecture')),
      body: Center(
        child: Text(
          'Counter: $counter',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterNotifier.increment,
        child: const Icon(Icons.add),
      ),
    );
}}
