import 'package:flutter/material.dart';

class HomePosts extends StatelessWidget {
  String userName;
  HomePosts({super.key, required this.userName});

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
                  child: CircleAvatar(backgroundColor: Colors.grey, radius: 18),
                ),  
                Text(userName, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
        Container(height: 410, decoration: BoxDecoration(color: Colors.grey)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
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
          child:
          //  Row(
          //   children: [
          //     Text("6 minutes ago",style: TextStyle(fontSize: 12),),
          //   ],
          // ),
          Text("6 minutes ago", style: TextStyle(fontSize: 12)),
        ),
      ],
    );
  }
}
