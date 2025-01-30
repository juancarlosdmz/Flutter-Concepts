// presentation/providers/counter_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/use_cases/increment_counter.dart';
import '../../data/repositories/counter_repository_impl.dart';

part 'counter_provider.g.dart';

@riverpod
CounterRepositoryImpl counterRepository(Ref ref) {
  return CounterRepositoryImpl();
}

@riverpod
IncrementCounter incrementCounter(Ref ref) {
  final repository = ref.read(counterRepositoryProvider);
  return IncrementCounter(repository);
}

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    _loadCounter();
    return 0; // Initial state
  }

  Future<void> _loadCounter() async {
    state = await ref.read(counterRepositoryProvider).getCounter();
  }

  Future<void> increment() async {
    state = await ref.read(incrementCounterProvider).execute();
  }
}
