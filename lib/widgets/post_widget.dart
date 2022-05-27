import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final int id;
  final String imageUrl;
  const PostWidget({Key? key, required this.imageUrl, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          GestureDetector(
            onDoubleTap: () {},
            child: Image.network(imageUrl),
          ),
          SizedBox(
            width: 300,
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
