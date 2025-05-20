import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/add_post_screen.dart';
import 'package:instagram_ui/pages/add_reels_screen.dart';

class AddFeedPage extends StatefulWidget {
  const AddFeedPage({super.key});

  @override
  State<AddFeedPage> createState() => AddFeedPageState();
}

int _currentIndex = 0;

class AddFeedPageState extends State<AddFeedPage> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  // navigationTapped(int page) {
  //   pageController.jumpToPage(page);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                onPageChanged: onPageChanged,
                controller: pageController,
                children: [AddPostScreen(), AddReelsScreen()],
              ),
              AnimatedPositioned(
                bottom: 10,
                duration: Duration(milliseconds: 400),
                right: _currentIndex == 0 ? 100 : 130,
                child: Container(
                  width: 150,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(141, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Post",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color:
                                _currentIndex == 0 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          "Reel",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color:
                                _currentIndex == 1 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
