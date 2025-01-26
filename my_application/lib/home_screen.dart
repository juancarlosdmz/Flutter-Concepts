import 'package:flutter/material.dart';
import 'package:my_application/details_screen.dart';

class DetailsScreenArguments {
  final String title;
  final String message;

  DetailsScreenArguments({required this.title, required this.message});
}

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
                  // Navigate to the details screen and wait for returned data
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        arguments: DetailsScreenArguments(
                          title: 'Details Screen',
                          message: 'Hello from HomeScreen!',
                        ),
                      ),
                    ),
                  );
          
                  // Update the returned data when the user comes back
                  if (result != null) {
                    setState(() {
                      _returnedData = result as String;
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
