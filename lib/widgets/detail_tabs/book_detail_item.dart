import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';

class BookDetailItemWidget extends StatelessWidget {
  final title;
  final content;

  BookDetailItemWidget(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title + ':',
          style: Theme.of(context).textTheme.caption),
        SizedBox(height: 5),
        Text(content,
          style: Theme.of(context).textTheme.bodyText2
          .copyWith(fontSize: 14)),
      ],
    );
  }
}
