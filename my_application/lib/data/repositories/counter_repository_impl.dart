import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/repositories/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  static const String _counterKey = 'counter';

  @override
  Future<int> getCounter() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_counterKey) ?? 0;
  }

  @override
  Future<void> saveCounter(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_counterKey, value);
  }
}
