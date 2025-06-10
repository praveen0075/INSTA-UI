import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constant_strings.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/utils/notifcation_follow_unfollow_section.dart';
import 'package:instagram_ui/utils/notification_story_likedsection.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                textAlign: TextAlign.start,
                "Last 7 days",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(child: NotficationScreenSection(tempVal: 0)),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                textAlign: TextAlign.start,
                "Last 30 days",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(child: NotficationScreenSection(tempVal: 3)),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                textAlign: TextAlign.start,
                "Older",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(child: NotficationScreenSection(tempVal: 4)),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                textAlign: TextAlign.start,
                "Suggested for you",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(
              child: ListView.separated(
                separatorBuilder: (context, index) => kh10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder:
                    (context, index) => ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(defaultImg),
                      ),
                      title: Text(
                        "username-23uo",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(7),
                          ),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotficationScreenSection extends StatelessWidget {
  final int tempVal;
  const NotficationScreenSection({super.key, required this.tempVal});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        separatorBuilder: (context, index) => kh10,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder:
            (context, index) =>
                index == tempVal
                    ? NotficationScreenStoryLiked()
                    : NotificationScreenFollowUnfollowSection(
                      isFollwing: index >= 2 ? true : false,
                    ),
      ),
    );
  }
}
