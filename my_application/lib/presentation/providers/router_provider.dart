// presentation/providers/router_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/details_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/details/:counter',
        name: 'details',
        builder: (context, state) {
          final counter = state.pathParameters['counter'];
          return DetailsScreen(counter: int.parse(counter ?? '0'));
        },
      ),
    ],
  );
});
