// domain/repositories/counter_repository.dart
abstract class CounterRepository {
  Future<int> getCounter();
  Future<void> saveCounter(int value);
}
