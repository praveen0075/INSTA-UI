import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constant_strings.dart';

class MessageScreenProfilepic extends StatelessWidget {
  bool isHeightlight ;
  double radiusOfcircleAvatar;
   MessageScreenProfilepic({super.key,required this.isHeightlight, required this.radiusOfcircleAvatar});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(radius: radiusOfcircleAvatar,backgroundImage: AssetImage(usericondp),),
              ),
            ),
          ),
        );
  }
}