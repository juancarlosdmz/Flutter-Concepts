import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_application/detail_screens_arguments.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _returnedData;

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
              Text(
                'Returned Data: ${_returnedData ?? 'No data yet'}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  // Navigate to details and wait for the result
                  final result = await context.push<String>(
                    '/details',
                    extra: DetailsScreenArguments(
                      title: 'Details Screen',
                      message: 'Hello from HomeScreen!',
                    ),
                  );
          
                  // Update the returned data if there is any
                  if (result != null) {
                    setState(() {
                      _returnedData = result;
                    });
                  }
                },
                child: const Text('Go to Details Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
