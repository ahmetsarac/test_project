import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/post.dart';

class LikedPostsNotifier extends StateNotifier<List<Post>> {
  LikedPostsNotifier(super.state);

  void addPost(Post post) {
    state = [...state, post];
  }

  void removePost(int id) {
    state = [
      for (final post in state)
        if (post.id != id) post,
    ];
  }

  void clear() {
    state = [];
  }
}

final likedPostsProvider =
    StateNotifierProvider<LikedPostsNotifier, List<Post>>(
        (ref) => LikedPostsNotifier([]));
