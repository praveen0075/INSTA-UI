
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constant_strings.dart';

class NotificationScreenFollowUnfollowSection extends StatelessWidget {
  final bool isFollwing;
  const NotificationScreenFollowUnfollowSection({
    super.key,
    required this.isFollwing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(defaultImg),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "username_32 ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "started folllowing you.",
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(text: " 2d", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
      trailing: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: isFollwing == false ? Colors.blue : Colors.grey.shade800,
        ),
        child: Center(
          child: Text(
            isFollwing == false ? "Follow back" : "Following",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
