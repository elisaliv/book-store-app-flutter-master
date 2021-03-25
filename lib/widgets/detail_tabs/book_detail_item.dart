import 'package:flutter/material.dart';

// Tab 2: template for children detail elements (to set the font style and spacing)

class BookDetailItemWidget extends StatelessWidget {
  final detail;
  final content;

  BookDetailItemWidget(this.detail, this.content);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(detail + ':',
          style: Theme.of(context).textTheme.caption),
        SizedBox(height: 5),
        Text(content,
          style: Theme.of(context).textTheme.bodyText2
          .copyWith(fontSize: 14)),
      ],
    );
  }
}
