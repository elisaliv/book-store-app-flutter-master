import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';

// Tab 1: add book description with appropriate margin

class BookDescriptionTab extends StatelessWidget {
  const BookDescriptionTab({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Text(
        book.description,
        style: Theme.of(context).textTheme.bodyText2
        .copyWith(letterSpacing: 0.25, height: 1.7, fontSize: 14),
      ),
    );
  }
}
