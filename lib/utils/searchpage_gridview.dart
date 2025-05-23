import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
                  child: Icon(
                    Icons.video_library_sharp,
                    color: Colors.white,
                    size: 30,
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
            // child: Image.asset(ListConsts.profilePics[index],fit: BoxFit.cover,),
          );
        }
      },
    );
    //     return GridView.custom(
    //   gridDelegate: SliverQuiltedGridDelegate(
    //     crossAxisCount: 3,
    //     mainAxisSpacing: 3,
    //     crossAxisSpacing: 3,
    //     repeatPattern: QuiltedGridRepeatPattern.inverted,
    //     pattern: [
    //       QuiltedGridTile(1, 1),
    //       QuiltedGridTile(2, 1),
    //       QuiltedGridTile(1, 1),
    //       QuiltedGridTile(1, 1),
    //     ],
    //   ),
    //   childrenDelegate: SliverChildBuilderDelegate(
    //     (context, index) => Container(
    //       color: Colors.primaries[index % Colors.primaries.length],
    //     ),
    //     childCount: 20, // LIMIT the number of children
    //   ),
    // );
  }
}
