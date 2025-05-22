import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/utils/story_hightlights.dart';

class ReelsManagingWidget extends StatelessWidget {
  int index;
  ReelsManagingWidget({
    super.key,
    required this.querySize,
    required this.index,
  });

  final Size querySize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: querySize.height,
          decoration: BoxDecoration(color: Colors.black),
          child: Center(
            child: Text(
              "Reel no : $index",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: 29,
          right: 15,
          child: Column(
            children: [
              Icon(Icons.favorite_outline, color: Colors.white, size: 35),
              Text("0", style: TextStyle(color: Colors.white, fontSize: 16)),
              kh10,
              kh10,
              Icon(Icons.comment, color: Colors.white, size: 35),
              Text("0", style: TextStyle(color: Colors.white, fontSize: 16)),
              kh10,
              kh10,
              Icon(Icons.send_outlined, color: Colors.white, size: 35),
              Text("0", style: TextStyle(color: Colors.white, fontSize: 16)),
              kh10,
              kh10,
              Icon(Icons.more_vert_outlined, color: Colors.white, size: 35),
              kh10,
              kh10,
              kh10,
              kh10,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Icon(Icons.music_note, color: Colors.white, size: 18),
                ),
              ),
              // Text("0",style: TextStyle(color: Colors.white,fontSize: 16),),
            ],
          ),
        ),
        Positioned(
          bottom: 25,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center ,
                children: [
                  StoryHightlights(
                    textBelowStory: "",
                    radiusOfcircleAvatar: 16,
                    isHeightlight: false,
                    imagecvr: "",
                  ),
                  kw7,
                  Column(
                    children: [
                      Text(
                        "username_134",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      kh10,
                      kh10,
                      kh10,
                      kh10,
                    ],
                  ),
                  kw7,
                  kw7,
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      kh10,
                      kh10,
                      kh10,
                    ],
                  ),
                ],
              ),

              Text(
                "A man patience....... ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              kh10,
              Row(
                children: [
                  CircleAvatar(radius: 8),
                  kw7,
                  Text(
                    "Liked by _username234 and 65,424 others",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          right: 11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reels",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Icon(Icons.camera_alt_outlined, color: Colors.white, size: 27),
            ],
          ),
        ),
      ],
    );
  }
}
