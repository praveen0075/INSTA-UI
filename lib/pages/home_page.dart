import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/constants/userlist.dart';
import 'package:instagram_ui/pages/messages_list_screen.dart';
import 'package:instagram_ui/pages/notification_page.dart';
import 'package:instagram_ui/utils/home_posts.dart';
import 'package:instagram_ui/utils/story_hightlights.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List userNames = ["user1", "user2", "user3", "user4", "user5", "user6"];
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              SliverAppBar(
                floating: true,
                snap: true,
                elevation: 0,
                backgroundColor: Colors.white,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      // color: Colors.blue,
                      height: 40,
                      child: Image.asset(
                        "assets/images/Instagram_logo.svg.png",
                      ),
                    ),
                    Row(
                      children: [
                        // Icon(Icons.add),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap:
                                () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NotificationPage(),
                                  ),
                                ),
                            child: Icon(Icons.favorite_outline),
                          ),
                        ),
                        GestureDetector(
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MessagesListScreen(),
                                ),
                              ),
                          child: Icon(Icons.message_outlined),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 111,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: usernameList.length,
                    itemBuilder:
                        (context, index) =>
                            index == 0
                                ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    kh5,
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 38,
                                          backgroundImage: AssetImage(
                                            userdpList[0],
                                          ),
                                        ),
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
                                              borderRadius:
                                                  BorderRadius.circular(23),
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
                                : StoryHightlights(
                                  textBelowStory: usernameList[index],
                                  radiusOfcircleAvatar: 35,
                                  isHeightlight: false,
                                  imagecvr: userdpList[index],
                                ),
                  ),
                ),
              ),
              SizedBox(
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: usernameList.length,
                  itemBuilder:
                      (context, index) =>
                          HomePosts(userName: userNames[index], indx: index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
