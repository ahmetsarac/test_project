import 'package:flutter/material.dart';
import 'package:test_project/models/post.dart';
import 'package:test_project/widgets/post_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return PostWidget(id: posts[index].id);
      },
      itemCount: posts.length,
    );
  }
}
