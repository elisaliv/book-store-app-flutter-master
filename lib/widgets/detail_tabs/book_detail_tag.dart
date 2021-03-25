import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/widgets/detail_tabs/custom_divider_book_tab.dart';
import 'package:skeleton_app/widgets/detail_tabs/book_detail_item.dart';

// Tab 2: add rounded container with padding, details (using the template) and
// dividers

class BookDetailTabWidget extends StatelessWidget {
  const BookDetailTabWidget({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).hintColor,),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BookDetailItemWidget('Editore', book.publisher),
            CustomDividerBookTab(),
            BookDetailItemWidget('Lingua', book.language),
            CustomDividerBookTab(),
            BookDetailItemWidget('ISBN-10', book.isbn10),
            CustomDividerBookTab(),
            BookDetailItemWidget('ISBN-13', book.isbn13),
            CustomDividerBookTab(),
            BookDetailItemWidget('Peso articolo', book.weight.toString() + ' g'),
            CustomDividerBookTab(),
            BookDetailItemWidget('Posizione nella classifica',
              'n. ' + book.position.toString() + ' in Libri più popolari'),
          ],
        ),
      ),
    );
  }
}
