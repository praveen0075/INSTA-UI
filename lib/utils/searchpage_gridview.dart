import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPageGridview extends StatelessWidget {
  const SearchPageGridview({super.key});

  @override
  Widget build(BuildContext context) {
    // return GridView.builder(
    //   itemCount: 20,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisSpacing: 2,
    //     mainAxisSpacing: 2,
    //     crossAxisCount: 3,
    //   ),
    //   itemBuilder:
    //       (context, index) => Container(decoration: BoxDecoration(color: Colors.blue)),
    // );
    // return SliverGrid(
    //   delegate: SliverChildBuilderDelegate(
    //     (context, index) =>
    //         Container(decoration: BoxDecoration(color: Colors.blue)),
    //   ),
    //   gridDelegate: SliverQuiltedGridDelegate(
    //     mainAxisSpacing: 3,
    //     crossAxisSpacing: 3,
    //     crossAxisCount: 3,
    //     pattern: [
    //       QuiltedGridTile(2, 2),
    //       QuiltedGridTile(2, 2),
    //       // QuiltedGridTile(2, 2),
    //       // QuiltedGridTile(2, 2),
    //       // QuiltedGridTile(2, 2),
    //     ],
    //   ),
    // );
    return MasonryGridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 3,
      crossAxisSpacing: 3,
      itemBuilder:
          (context, index) {
             if (index % 7 == 2) {
                return Container(
                  height: 300,
                  color: Colors.red,
                );
              } else {
                return Container(
                  height: 148,
                  color: Colors.blue,
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
