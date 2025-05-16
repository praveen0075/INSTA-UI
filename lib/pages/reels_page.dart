import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/reels_managing_widget.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final querySize = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: PageController(initialPage: 0, viewportFraction: 1),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ReelsManagingWidget(querySize: querySize,index: index,);
        },
      ),
    );
  }
}
