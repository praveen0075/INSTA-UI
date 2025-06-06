import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constant_strings.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrnSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [CircleAvatar(radius: 18,backgroundImage: AssetImage(usericondp),), kw7, Text("username_23")]),
            Row(
              children: [
                Icon(Icons.phone_outlined),
                kw7,
                Icon(Icons.videocam_outlined),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(height: scrnSize.height, color: Colors.white),
          Positioned(
            bottom: 10,
            left: 7,
            right: 7,
            child: Container(
              width: scrnSize.width,
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromARGB(205, 227, 222, 227),
                borderRadius: BorderRadius.circular(38),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      kw10,
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      kw10,
                      SizedBox(
                        width: 150,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Message...",
                            hintStyle: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.mic_none_rounded, size: 25),
                      kw10,
                      Icon(Icons.image_outlined, size: 25),
                      kw10,
                      Icon(Icons.sticky_note_2_outlined, size: 25),
                      kw10,
                      Icon(Icons.add_circle_outline_outlined, size: 25),
                      kw10,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
