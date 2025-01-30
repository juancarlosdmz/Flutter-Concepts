// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterRepositoryHash() => r'55598a12dd6d19534a210384ca8133dbe5863e08';

/// See also [counterRepository].
@ProviderFor(counterRepository)
final counterRepositoryProvider =
    AutoDisposeProvider<CounterRepositoryImpl>.internal(
  counterRepository,
  name: r'counterRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CounterRepositoryRef = AutoDisposeProviderRef<CounterRepositoryImpl>;
String _$incrementCounterHash() => r'fb0c968350733dc6e55904b999d48fa9fa85e610';

/// See also [incrementCounter].
@ProviderFor(incrementCounter)
final incrementCounterProvider = AutoDisposeProvider<IncrementCounter>.internal(
  incrementCounter,
  name: r'incrementCounterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$incrementCounterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IncrementCounterRef = AutoDisposeProviderRef<IncrementCounter>;
String _$counterHash() => r'94afd0e1536685364dbbaad27c025755c48a1506';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
