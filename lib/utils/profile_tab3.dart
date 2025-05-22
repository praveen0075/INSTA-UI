import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/userlist.dart';

class ProfileTab3 extends StatelessWidget {
  const ProfileTab3({super.key});

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
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage(userdpList[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
    );
  }
}
