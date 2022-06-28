import 'package:ebook_app/constants/constant.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final int selected;
  final Function callback;
  CustomTab({
    Key? key,
    required this.selected,
    required this.callback,
  }) : super(key: key);
  final tabs = ['EBook', 'Audiobooks'];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 56,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            width: (width - 40) / 2 - 10,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selected == index ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              tabs[index],
              style: const TextStyle(
                color: eFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: tabs.length,
      ),
    );
  }
}
