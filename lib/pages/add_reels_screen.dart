import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';

class AddReelsScreen extends StatelessWidget {
  const AddReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("New reel", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                kw10,
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(53, 255, 255, 255),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.add_box_outlined, color: Colors.white),
                        kw10,
                        Text(
                          "Drafts",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                kw10,
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(53, 255, 255, 255),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.white),
                        kw10,
                        Text(
                          "Templates",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recents",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(Icons.filter_none_outlined, color: Colors.white),
                ],
              ),
            ),
            MasonryGridView.count(
              itemCount: 30,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              itemBuilder:
                  (context, index) =>
                      index == 0
                          ? SizedBox(
                            height: 200,
                            child: Center(
                              child: Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                          : Container(height: 200, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
