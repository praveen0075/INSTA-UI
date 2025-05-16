import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/utils/home_posts.dart';
import 'package:instagram_ui/utils/story_hightlights.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List userNames = ["user1", "user2", "user3", "user4", "user5", "user6"];
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent ,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram"),
            Row(
              children: [
                // Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite_outline),
                ),
                Icon(Icons.chat_bubble_outline),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 111,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: userNames.length,
              itemBuilder:
                  (context, index) =>
                      index == 0
                          ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  CircleAvatar(radius: 40),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(23),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              kh5,
                              Text("Your story"),
                            ],
                          )
                          :
                          // HomeStoriesWidget(userNameText: userNames[index]),
                          StoryHightlights(
                            textBelowStory: userNames[index],
                            radiusOfcircleAvatar: 35,
                            isHeightlight: false,
                          ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userNames.length,
              itemBuilder:
                  (context, index) => HomePosts(userName: userNames[index]),
            ),
          ),
        ],
      ),
    );
  }
}
