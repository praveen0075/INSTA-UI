import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/constants/userlist.dart';

class MessageScreenNotesList extends StatelessWidget {
  const MessageScreenNotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: 150,
      child: ListView.separated(
        separatorBuilder: (context, index) => kw7,
        scrollDirection: Axis.horizontal,
        itemCount: userdpList.length,
        itemBuilder:
            (context, index) =>
                index == 0
                    ? Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(userdpList[0]),
                              ),
                              Text("Your note"),
                            ],
                          ),
                        ),
                        Positioned(
                          // right: 0,
                          // top: 0,
                          // left: 0,
                          left: 0.16,
                          right: 0.5,
                          // bottom: 3,
                          child: Card(
                            child: SizedBox(
                              width: 116,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Text(
                                  "Share your note",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                    : Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(userdpList[index]),
                              ),
                              Text("username_2"),
                            ],
                          ),
                        ),
                        Positioned(
                          // top: 0,
                          // left: 0,
                          left: 0.16,
                          right: 0.5,
                          child: Card(
                            child: SizedBox(
                              width: 119,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Nothing is impossimple",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
      ),
    );
  }
}
