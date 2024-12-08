import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeStateProviderFamily<int, int>
    autoDisposeFamilyCounterProvider =
    StateProvider.autoDispose.family<int, int>((ref, value) {
  ref.onDispose(() {
    print('[autoDisposeFamilyCounterProvider($value)] disposed');
  });
  return value;
});
