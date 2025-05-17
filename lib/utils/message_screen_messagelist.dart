import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/utils/message_screen_profilepic.dart';

class MessagesScreenMessagesList extends StatelessWidget {
  const MessagesScreenMessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      // child: ListTile(
      //   leading: StoryHightlights(textBelowStory: "", radiusOfcircleAvatar: 20 ,isHeightlight: false,),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  StoryHightlights(textBelowStory: "", radiusOfcircleAvatar: 26,isHeightlight: false,),
              MessageScreenProfilepic(
                isHeightlight: false,
                radiusOfcircleAvatar: 25,
              ),
              kw7,
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "username_23",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text("seen 1h ago"),
                  // kh10,
                  // kh10,
                  // kh10,
                  // kw7,
                ],
              ),
            ],
          ),
          Icon(Icons.camera_alt_outlined, size: 27),
          // kw7
        ],
      ),
    );
  }
}
