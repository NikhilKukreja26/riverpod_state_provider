import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyProvider = StateProvider.family<int, int>((ref, initialValue) {
  ref.onDispose(() {
    print('[familyProvider] disposed');
  });
  return initialValue;
});
