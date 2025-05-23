import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_ui/constants/userlist.dart';

class ProfileTab2 extends StatelessWidget {
  const ProfileTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      itemCount: allPictureList.length,

      crossAxisCount: 3,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,

      itemBuilder:
          (context, index) => Container(
            height: 240,
            decoration: BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                image: AssetImage(allPictureList[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 8,
                  top: 8,
                  child: Icon(
                    Icons.video_library_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
