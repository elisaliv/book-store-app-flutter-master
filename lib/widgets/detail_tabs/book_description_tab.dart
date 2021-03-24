import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';

class BookDescriptionTab extends StatelessWidget {
  const BookDescriptionTab({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        book.description,
        style: Theme.of(context).textTheme.bodyText2
        .copyWith(letterSpacing: 0.25, height: 1.7),
      ),
    );
  }
}
