// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'presentation/providers/router_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider); // ✅ Uses auto-generated provider

    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Navigation with Riverpod',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal)),
    );
  }
}