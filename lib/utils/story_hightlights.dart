import 'package:flutter/material.dart';

class StoryHightlights extends StatelessWidget {
  final String textBelowStory;
  final double radiusOfcircleAvatar;
  bool? isHeightlight;
  StoryHightlights({
    super.key,
    required this.textBelowStory,
    required this.radiusOfcircleAvatar,
    this.isHeightlight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient:
                isHeightlight == false
                    ? LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        const Color.fromARGB(255, 223, 30, 233),
                        const Color.fromARGB(255, 223, 30, 233),
                        const Color.fromARGB(255, 223, 30, 233),
                        Colors.pink,
                        Colors.red,
                        Colors.red,
                        Colors.red,
                        Colors.yellow,
                        Colors.yellow,
                        Colors.yellow,
                      ],
                    )
                    : null,
            color: const Color.fromARGB(187, 189, 189, 189),
            borderRadius: BorderRadius.circular(45),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: CircleAvatar(radius: radiusOfcircleAvatar),
              ),
            ),
          ),
        ),
        Text(textBelowStory),
      ],
    );
  }
}
