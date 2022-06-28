import 'package:flutter/material.dart';

class Book {
  late final String type;
  late final String name;
  late final String publisher;
  late final DateTime date;
  late final String imgUrl;
  late final num rating;
  late final num score;
  late final String review;
  late final num height;
  Book(
    this.type,
    this.name,
    this.publisher,
    this.date,
    this.imgUrl,
    this.rating,
    this.score,
    this.review,
    this.height,
  );

  static List<Book> generateBooks() {
    return [
      Book(
        'history',
        'This is the way.',
        'isStudio',
        DateTime(2022, 3, 23),
        'assets/images/book1.jpeg',
        4.7,
        897,
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
        240.0,
      ),
      Book(
        'history',
        'This is the way.',
        'isStudio',
        DateTime(2022, 3, 23),
        'assets/images/book2.jpeg',
        4.7,
        897,
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
        270.0,
      ),
      Book(
        'history',
        'This is the way.',
        'isStudio',
        DateTime(2022, 3, 23),
        'assets/images/book3.jpeg',
        4.7,
        897,
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
        270.0,
      ),
      Book(
        'history',
        'This is the way.',
        'isStudio',
        DateTime(2022, 3, 23),
        'assets/images/book4.jpeg',
        4.7,
        897,
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
        250.0,
      ),
      Book(
        'history',
        'This is the way.',
        'isStudio',
        DateTime(2022, 3, 23),
        'assets/images/book5.jpeg',
        4.7,
        897,
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
        250.0,
      ),
      Book(
        'history',
        'This is the way.',
        'isStudio',
        DateTime(2022, 3, 23),
        'assets/images/book6.jpeg',
        4.7,
        897,
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
        270.0,
      ),
    ];
  }
}
