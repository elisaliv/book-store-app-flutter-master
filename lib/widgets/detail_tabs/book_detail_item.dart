import 'package:flutter/material.dart';

// The children in book_detail_tag.dart could already be created here (importing
// the book model here)

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
