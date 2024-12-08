import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProviderFamily<int, int> familyCounterProvider =
    StateProvider.family<int, int>((ref, value) {
  ref.onDispose(() {
    print('[familyCounterProvider($value)] disposed');
  });
  return value;
});
