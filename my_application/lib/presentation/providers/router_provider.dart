// presentation/providers/router_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/details_screen.dart';
import '../screens/not_found_screen.dart';

part 'router_provider.g.dart'; // ✅ Generated file

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(path: '/', name: 'home', builder: (context, state) => const HomeScreen(), routes: [
        GoRoute(
          path: '/details/:counter',
          name: 'details',
          builder: (context, state) {
            final counter = state.pathParameters['counter'];
            return DetailsScreen(counter: int.parse(counter ?? '0'));
          },
        ),
      ]),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
