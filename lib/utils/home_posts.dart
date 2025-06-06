import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/constants/userlist.dart';

// ignore: must_be_immutable
class HomePosts extends StatelessWidget {
  String userName;
  int indx;
  HomePosts({super.key, required this.userName, required this.indx});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 18,
                    backgroundImage: AssetImage(userdpList[indx]),
                  ),
                ),
                Text(userName, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
        Container(
          height: 410,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage(userPostList[indx]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Row(
                  children: [
                    Icon(Icons.favorite_outline, size: 28),
                    Text("4552", style: TextStyle(fontWeight: FontWeight.bold)),
                    kw7,
                    Icon(Icons.comment_outlined, size: 28),
                    Text("1050", style: TextStyle(fontWeight: FontWeight.bold)),
                    kw7,
                    Icon(Icons.send, size: 27),
                    Text("1405", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text("Liked by "),
              Text("username_1", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(" and "),
              Text("others", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 6, right: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "$userName : ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                TextSpan(
                  text:
                      "caption is something unavoidable thing in instagram post, especilay in my post !!",
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("6 minutes ago", style: TextStyle(fontSize: 12)),
        ),
      ],
    );
  }
}
