import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/pages/chat_page.dart';
import 'package:instagram_ui/utils/message_screen_notelist.dart.dart';
import 'package:instagram_ui/utils/message_screen_messagelist.dart';

class MessagesListScreen extends StatelessWidget {
  const MessagesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("username_234", style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                Icon(Icons.dashboard_customize_outlined),
                kw7,
                kw7,
                Icon(Icons.movie_edit),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    kw7,
                    Icon(Icons.search, color: Colors.grey.shade600),
                    kw7,
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            kh20,
            MessageScreenNotesList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Text(
                    "Requests (0)",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:
                  (context, index) => GestureDetector(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage()),
                        ),
                    child: MessagesScreenMessagesList(),
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 0),
              itemCount: 10,
            ),
          ],
        ),
      ),
    );
  }
}
