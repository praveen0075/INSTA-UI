import 'package:flutter/material.dart';

class SearchPageGridview extends StatelessWidget {
  const SearchPageGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 3,
      ),
      itemBuilder:
          (context, index) => Container(decoration: BoxDecoration(color: Colors.blue)),
    );
  }
}
 