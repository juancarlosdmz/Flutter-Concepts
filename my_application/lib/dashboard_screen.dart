import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  final Widget child;

  const DashboardScreen({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: child, // Render the active child route
      bottomNavigationBar: NavigationBar(
        selectedIndex: _getSelectedIndex(context),
        onDestinationSelected: (index) {
          if (index == 0) context.goNamed('profile'); // Use named route
          if (index == 1) context.goNamed('settings'); // Use named route
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }

  // Determine the active tab based on the current route
  int _getSelectedIndex(BuildContext context) {
    final location = GoRouter.of(context).state.path ?? '';
    if (location.startsWith('/dashboard/profile')) return 0;
    if (location.startsWith('/dashboard/settings')) return 1;
    return 0; // Default to the first tab
  }
}
