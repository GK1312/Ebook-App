import 'package:ebook_app/constants/constant.dart';
import 'package:ebook_app/screens/home/widgets/book_staggered_grid_view.dart';
import 'package:ebook_app/screens/home/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;
  int bottomIndex = 0;
  PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(
        children: [
          CustomTab(
            selected: tabIndex,
            callback: (int index) {
              setState(() {
                tabIndex = index;
              });
              pageController!.jumpToPage(index);
            },
          ),
          Expanded(
            child: BookStaggeredGridView(
              selected: tabIndex,
              pageGridController: pageController,
              callback: (int index) => {
                setState(() {
                  tabIndex = index;
                })
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    final bottons = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline,
    ];
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 56,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => setState(() {
            bottomIndex = index;
          }),
          child: Container(
            width: (width - 40) / 5,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: bottomIndex == index
                ? const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: Colors.deepOrange,
                      ),
                    ),
                  )
                : null,
            child: Icon(
              bottons[index],
              size: 30,
              color: bottomIndex == index ? eFont : Colors.grey[400],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: bottons.length,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu_rounded,
          color: eFont,
        ),
      ),
      title: const Text(
        "All Books",
        style: TextStyle(
          color: eFont,
          fontSize: 18,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            color: eFont,
          ),
        )
      ],
    );
  }
}
