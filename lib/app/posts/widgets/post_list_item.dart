import 'package:flutter/material.dart';

import '../models/post.dart';

class PostListItem extends StatelessWidget {
  final Post? post;

  const PostListItem({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Text('${post?.id}', style: textTheme.caption),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(post?.title ?? ''),
          ),
          isThreeLine: true,
          subtitle: Text(post?.body ?? ''),
          dense: true,
        ),
      ),
    );
  }
}
