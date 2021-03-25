import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book_review.dart';
import 'package:skeleton_app/widgets/detail_tabs/book_review_rating.dart';

// Tab 3: template for each review. Contains all elements specified in the
// model with appropriate formatting and blank spaces between elements.

class BookReviewItemWidget extends StatelessWidget {
  final BookReview bookReview;

  BookReviewItemWidget(this.bookReview);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(bookReview.title, 
          style: Theme.of(context).textTheme.subtitle1),
        SizedBox(height: 10),
        BookReviewRating(bookReview.rating),
        SizedBox(height: 10),
        Text(
          bookReview.text,
          style: Theme.of(context).textTheme.bodyText2
          .copyWith(letterSpacing: 0.25, height: 1.7, fontSize: 14),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(bookReview.authorProfileImage)),
            SizedBox(width: 10),
            Text(
              bookReview.author,
              style: Theme.of(context).textTheme.caption),
          ],
        ),
      ],
    );
  }
}
