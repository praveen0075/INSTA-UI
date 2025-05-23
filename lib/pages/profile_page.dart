import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/constants/userlist.dart';
import 'package:instagram_ui/utils/profile_tab1.dart';
import 'package:instagram_ui/utils/profile_tab2.dart';
import 'package:instagram_ui/utils/profile_tab3.dart';
import 'package:instagram_ui/utils/profilepage_actionbuttons.dart';
import 'package:instagram_ui/utils/story_hightlights.dart';
import 'package:instagram_ui/utils/profilepage_userdetails.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "User name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            Row(
              children: [
                Icon(Icons.add_box_outlined, size: 32),
                SizedBox(width: 8),
                Icon(Icons.list, size: 32),
              ],
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePageUserDetails(),
            kh5,
            kh5,
            ProfilePageActionButtons(),
            kh10,
            kh10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 130,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: userPostList.length,
                  itemBuilder:
                      (context, index) =>
                       index == 0 ? Column(
                        children: [
                          Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Icon(Icons.add),
                      ),
                      Text("New")
                        ],
                      ):
                  StoryHightlights(
                    textBelowStory: "highlight",
                    radiusOfcircleAvatar: 30,
                    isHeightlight: true,
                    imagecvr: userPostList[index],
                    // indx: index,
                  ),
                ),
              ),
            ),
            TabBar(
              indicatorColor: Colors.black,
              // indicator: BoxDecoration(color: Colors.black),
              labelColor: Colors.black,
              dividerHeight: 0.5,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(icon: Icon(Icons.grid_on)),
                Tab(icon: Icon(Icons.video_library_outlined)),
                Tab(icon: Icon(Icons.perm_contact_calendar_outlined)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [ProfileTab1(), ProfileTab2(), ProfileTab3()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
