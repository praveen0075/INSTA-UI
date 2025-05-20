import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrnSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "New Post",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Text(
            "Next",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          kw10,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 370,
              // child: GridView.builder(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 1,
              //     mainAxisSpacing: 1,
              //     crossAxisSpacing: 1,
              //   ),
              //   itemBuilder: (context, index) {
              //     return Container(
              //       decoration: BoxDecoration(color: Colors.red),
              //     );
              //   },
              // ),
              child: Container(color: Colors.black),
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  kw10,
                  Text(
                    "Recents",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  kw50,
                  kw50,
                  kw10,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.filter_none_sharp, color: Colors.white),
                          Text(
                            "SELECT MULTIPLE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            kh10,
            GridView.builder(
              itemCount: 50,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
              itemBuilder: (context, index) {
                return index == 0
                    ? Container(
                      color: const Color.fromARGB(53, 158, 158, 158),
                      child: Center(
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                    : Container(decoration: BoxDecoration(color: Colors.grey));
              },
            ),
          ],
        ),
      ),
    );
  }
}
