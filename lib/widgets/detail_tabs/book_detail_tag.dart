import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';

class BookDetailTabWidget extends StatelessWidget {
  const BookDetailTabWidget({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    //TODO: Show us your Flutter skills!
    return Container(height: 300, color: Colors.green);
  }
}
