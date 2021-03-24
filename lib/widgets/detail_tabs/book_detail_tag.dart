import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/widgets/detail_tabs/custom_divider_book_detail.dart';
import 'package:skeleton_app/widgets/detail_tabs/book_detail_item.dart';

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
            CustomDividerBookDetail(),
            BookDetailItemWidget('Lingua', book.language),
            CustomDividerBookDetail(),
            BookDetailItemWidget('ISBN-10', book.isbn10),
            CustomDividerBookDetail(),
            BookDetailItemWidget('ISBN-13', book.isbn13),
            CustomDividerBookDetail(),
            BookDetailItemWidget('Peso articolo', book.weight.toString() + ' g'),
            CustomDividerBookDetail(),
            BookDetailItemWidget('Posizione nella classifica',
              'n. ' + book.position.toString() + ' in Libri più popolari'),
          ],
        ),
      ),
    );
  }
}
