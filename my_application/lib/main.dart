import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_application/dashboard_screen.dart';
import 'package:my_application/details_screen.dart';
import 'package:my_application/error_screen.dart';
import 'package:my_application/home_screen.dart';
import 'package:my_application/profile_screen.dart';
import 'package:my_application/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    errorBuilder: (context, state) => ErrorScreen(error: state.error.toString()), // Handle unknown routes
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return DashboardScreen(child: child);
        },
        redirect: (context, state) {
          // Example redirect: Prevent access if user is not authenticated
          const isAuthenticated = true; // Mock authentication state
          // ignore: dead_code
          return !isAuthenticated ? '/' : null;
        },
        routes: [
          GoRoute(
            path: '/dashboard/profile',
            name: 'profile',
            builder: (context, state) => const ProfileScreen(),
            
          ),
          GoRoute(
            path: '/dashboard/settings',
            name: 'settings',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/details',
        name: 'details',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? 'unknown';
          final extraMessage = state.extra as String?;
          return DetailsScreen(id: id, extraMessage: extraMessage);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'GoRouter with ShellRoute Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
    );
  }
}
