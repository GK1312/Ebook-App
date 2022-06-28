import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/screens/home/widgets/book_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController? pageGridController;
  final Function callback;
  BookStaggeredGridView({
    Key? key,
    required this.selected,
    required this.pageGridController,
    required this.callback,
  }) : super(key: key);

  final bookList = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: PageView(
        controller: pageGridController,
        onPageChanged: (index) => callback(index),
        children: [
          MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: bookList.length,
            itemBuilder: (_, index) => BookItem(
              book: bookList[index],
            ),
          ),
        ],
      ),
    );
  }
}
