
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';

class MessageScreenNotesList extends StatelessWidget {
  const MessageScreenNotesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 150,
      child: ListView.separated(
        separatorBuilder: (context, index) => kw7,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder:
            (context, index) =>
                index == 0
                    ? Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: [ 
                              CircleAvatar(radius: 38),
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
                                padding: const EdgeInsets.all(5),
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
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(radius: 38),
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
                            child: Container(
                              width: 119,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
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
