// presentation/providers/counter_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/use_cases/increment_counter.dart';
import '../../data/repositories/counter_repository_impl.dart';

// Provider for Repository
final counterRepositoryProvider = Provider<CounterRepositoryImpl>(
  (ref) => CounterRepositoryImpl(),
);

// Provider for Use Case
final incrementCounterProvider = Provider<IncrementCounter>(
  (ref) {
    final repository = ref.read(counterRepositoryProvider);
    return IncrementCounter(repository);
  },
);

// State Provider for Counter Value
final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  final useCase = ref.read(incrementCounterProvider);
  return CounterNotifier(useCase);
});

class CounterNotifier extends StateNotifier<int> {
  final IncrementCounter _useCase;

  CounterNotifier(this._useCase) : super(0) {
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    state = await _useCase.repository.getCounter();
  }

  Future<void> increment() async {
    state = await _useCase.execute();
  }
}
