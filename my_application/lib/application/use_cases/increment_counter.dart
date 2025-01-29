// application/use_cases/increment_counter.dart
import '../../domain/entities/counter.dart';
import '../../domain/repositories/counter_repository.dart';

class IncrementCounter {
  final CounterRepository repository;

  IncrementCounter(this.repository);

  Future<int> execute() async {
    int currentValue = await repository.getCounter();
    final newCounter = Counter(currentValue).increment();
    await repository.saveCounter(newCounter.value);
    return newCounter.value;
  }
}
