import 'package:flutter/material.dart';
import 'package:test_project/models/post.dart';
import 'package:test_project/widgets/post_widget.dart';

class FeedScreen extends StatelessWidget {
  final List<Post> posts = [
    Post(1, "https://picsum.photos/id/1/300/300"),
    Post(2, "https://picsum.photos/id/20/300/300"),
    Post(3, "https://picsum.photos/id/33/300/300"),
    Post(4, "https://picsum.photos/id/45/300/300"),
    Post(5, "https://picsum.photos/id/57/300/300"),
    Post(6, "https://picsum.photos/id/69/300/300"),
    Post(7, "https://picsum.photos/id/72/300/300"),
    Post(8, "https://picsum.photos/id/81/300/300"),
    Post(9, "https://picsum.photos/id/99/300/300"),
    Post(10, "https://picsum.photos/id/10/300/300"),
  ];

  FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return PostWidget(id: posts[index].id, imageUrl: posts[index].imageUrl);
      },
      itemCount: posts.length,
    );
  }
}
