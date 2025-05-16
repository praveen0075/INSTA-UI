
import 'package:flutter/material.dart';

class HomeStoriesWidget extends StatelessWidget {
  String userNameText;
   HomeStoriesWidget({
    super.key,
    required this.userNameText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(33),
            ),
          ),
          SizedBox(height: 10),
          Text(userNameText),
        ],
      ),
    );
  }
}
