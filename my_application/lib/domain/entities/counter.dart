// domain/entities/counter.dart
class Counter {
  final int value;

  Counter(this.value);

  Counter increment() => Counter(value + 1);
}
