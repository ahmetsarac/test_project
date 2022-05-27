import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/providers/liked_posts_provider.dart';

import '../models/post.dart';
import '../screens/post_screen.dart';

class PostWidget extends ConsumerWidget {
  final String id;
  const PostWidget({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likedPost = ref.watch(likedPostsProvider);
    final imageUrl = posts.firstWhere((element) => element.id == id).imageUrl;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostScreen(
                      id: id,
                    ),
                  ));
            },
            onDoubleTap: () {
              ref.read(likedPostsProvider.notifier).addPost(id);
            },
            child: Image.network(imageUrl),
          ),
          SizedBox(
            width: 300,
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  if (likedPost.contains(id)) {
                    ref.read(likedPostsProvider.notifier).removePost(id);
                  } else {
                    ref.read(likedPostsProvider.notifier).addPost(id);
                  }
                },
                icon: Icon(
                  likedPost.contains(id)
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
