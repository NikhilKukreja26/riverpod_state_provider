import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeFamilyProvider =
    StateProvider.autoDispose.family<int, int>((ref, initialValue) {
  ref.onDispose(() {
    print('[autoDisposeFamilyProvider($initialValue)] disposed');
  });
  return initialValue;
});
