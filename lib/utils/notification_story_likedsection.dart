
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constant_strings.dart';
import 'package:instagram_ui/constants/userlist.dart';

class NotficationScreenStoryLiked extends StatelessWidget {
  const NotficationScreenStoryLiked({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 80,
        width: 60,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 16,
              bottom: 0,
              child: CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage(defaultImg),
              ),
            ),
            Positioned(
              // right: 14,
              left: 20,
              bottom: -0,
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage(usericondp),
              ),
            ),
          ],
        ),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "username_32, username345",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: " and others liked your story",
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(text: " 2d", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
      trailing: Container(
        height: 55,
        width: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(userPostList[4]),
            fit: BoxFit.cover,
          ),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}