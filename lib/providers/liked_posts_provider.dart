import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/providers/shared_pref_provider.dart';

class LikedPostsNotifier extends StateNotifier<List<String>> {
  LikedPostsNotifier(super.state);

  void addPost(String id) {
    state = [...state, id];
    setlocalData();
  }

  void setlocalData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> likedPosts = state;
    prefs.setStringList('likedPosts', likedPosts);
  }

  void removePost(String id) {
    state = [
      for (final post in state)
        if (post != id) post,
    ];
    setlocalData();
  }

  void clear() async {
    state = [];
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}

final likedPostsProvider =
    StateNotifierProvider<LikedPostsNotifier, List<String>>((ref) {
  final likedPosts = ref.watch(sharedPref).when(
        data: (data) =>
            data.getStringList('likedPosts') ?? List<String>.empty(),
        loading: () => List<String>.empty(),
        error: (err, stack) => debugPrint(err.toString()),
      );
  return LikedPostsNotifier(likedPosts as List<String>);
});
