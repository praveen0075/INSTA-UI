import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/userlist.dart';

class ProfileTab1 extends StatelessWidget {
  const ProfileTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: userdpList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder:
          (context, index) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(userPostList[index]),fit: BoxFit.cover),
            ),
          ),
    );
  }
}
