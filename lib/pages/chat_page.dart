import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(radius: 20),
            Text("username_23"),
            Icon(Icons.phone_outlined),
            Icon(Icons.videocam_outlined),
          ],
        ),
      ),
    );
  }
}
