import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/providers/liked_posts_provider.dart';

import '../models/post.dart';

class PostWidget extends ConsumerWidget {
  final Post post;
  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likedPost = ref.watch(likedPostsProvider);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          GestureDetector(
            onDoubleTap: () {
              ref.read(likedPostsProvider.notifier).addPost(post);
            },
            child: Image.network(post.imageUrl),
          ),
          SizedBox(
            width: 300,
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  if (likedPost.contains(post)) {
                    ref.read(likedPostsProvider.notifier).removePost(post.id);
                  } else {
                    ref.read(likedPostsProvider.notifier).addPost(post);
                  }
                },
                icon: Icon(
                  likedPost.contains(post)
                      ? Icons.favorite
                      : Icons.favorite_border,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
