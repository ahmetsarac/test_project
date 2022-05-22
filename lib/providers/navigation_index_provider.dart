import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationIndexNotifier extends StateNotifier<int> {
  NavigationIndexNotifier(super.state);

  void changeIndex(index) {
    state = index;
  }
}

final navigationIndexProvider =
    StateNotifierProvider<NavigationIndexNotifier, int>((ref) {
  return NavigationIndexNotifier(0);
});
