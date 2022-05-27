import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/providers/liked_posts_provider.dart';
import 'package:test_project/widgets/post_widget.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likedPosts = ref.watch(likedPostsProvider);
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ref.read(likedPostsProvider.notifier).clear();
            },
            child: const Text('Clear Liked Posts'),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return PostWidget(id: likedPosts[index]);
              },
              itemCount: likedPosts.length,
            ),
          )
        ],
      ),
    );
  }
}
