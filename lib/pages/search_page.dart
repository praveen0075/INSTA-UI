import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/utils/searchpage_gridview.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                floating: true,
                snap: true,
                title: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      kw7,
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 59, 183, 255),
                              Color.fromARGB(255, 59, 183, 255),
                              Color.fromARGB(255, 59, 183, 255),
                              Color.fromARGB(255, 59, 183, 255),
                              Color.fromARGB(255, 59, 183, 255),
                              Color.fromARGB(255, 59, 72, 255),
                              Color.fromARGB(255, 59, 72, 255),
                              Color.fromARGB(255, 59, 72, 255),
                              Color.fromARGB(255, 59, 72, 255),
                              Color.fromARGB(255, 59, 72, 255),
                              Color.fromARGB(255, 226, 22, 209),
                              Color.fromARGB(255, 226, 22, 209),
                              Color.fromARGB(255, 226, 22, 209),
                              Color.fromARGB(255, 185, 10, 194),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: CircleAvatar(radius: 7),
                        ),
                      ),
                      kw7,
                      Text(
                        "Ask Meta AI or Search",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
        body: SearchPageGridview(),
      ),
    );
  }
}
