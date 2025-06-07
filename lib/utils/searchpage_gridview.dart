import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/constants/userlist.dart';

class SearchPageGridview extends StatelessWidget {
  const SearchPageGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: EdgeInsets.all(0),
      itemCount: allPictureList.length,
      crossAxisCount: 3,
      mainAxisSpacing: 3,
      crossAxisSpacing: 3,
      itemBuilder: (context, index) {
        if (index % 7 == 2) {
          return Container(
            height: 300,

            decoration: BoxDecoration(
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
                  // child: Icon(
                  //   Icons.video_library_sharp,
                  //   color: Colors.white,
                  //   size: 30,
                  // ),
                  child: SvgPicture.asset(
                    "assets/icons/instagram-reels-icon.svg",
                    width: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container(
            height: 148,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(allPictureList[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      },
    );
  }
}
