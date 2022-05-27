import 'package:flutter/material.dart';
import 'package:test_project/widgets/post_widget.dart';

class PostScreen extends StatelessWidget {
  final String id;

  const PostScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post ID : $id')),
      body: PostWidget(id: id),
    );
  }
}
