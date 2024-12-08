import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_dispose_provider.g.dart';

final AutoDisposeStateProvider<int> autoDisposeCounterProvider =
    StateProvider.autoDispose<int>((ref) {
  ref.onDispose(() {
    print('[autoDisposeCounterProvider] disposed');
  });
  return 0;
});

@riverpod
String autoDisposeAge(Ref ref) {
  // ignore: avoid_manual_providers_as_generated_provider_dependency
  final age = ref.watch(autoDisposeCounterProvider);
  ref.onDispose(() {
    print('[autoDisposeAgeProvider] disposed');
  });
  return 'Hi I am $age years old.';
}
