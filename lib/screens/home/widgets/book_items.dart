import 'package:ebook_app/models/book.dart';
import 'package:flutter/cupertino.dart';

class BookItem extends StatelessWidget {
  final Book book;
  const BookItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: book.height as double,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(book.imgUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
