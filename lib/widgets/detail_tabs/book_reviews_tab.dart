import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/widgets/detail_tabs/book_review_item.dart';
import 'package:skeleton_app/widgets/detail_tabs/custom_divider_book_tab.dart';

// Tab 3: add all reviews, if there are any. Create review items and dividers
// with a for loop, and add them to the tab

class BookReviewsTab extends StatelessWidget {
  const BookReviewsTab({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  List<Widget> _getReviewChildren(BuildContext context) {
    List<Widget> reviews = [];
    if (book.reviews == null) {
      return reviews;
    } else {
      for (int i = 0; i < book.reviews.length; i++) {
        reviews.add(BookReviewItemWidget(book.reviews[i]));
        if (i != book.reviews.length - 1) {
          reviews.add(CustomDividerBookTab(verticalPadding: 16.0));
        }
      }
      return reviews;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _getReviewChildren(context),
      ),
    );
  }
}
