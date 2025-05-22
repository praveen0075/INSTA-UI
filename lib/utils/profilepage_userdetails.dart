
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/constants/userlist.dart';

class ProfilePageUserDetails extends StatelessWidget {
  const ProfilePageUserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                CircleAvatar(radius: 45,backgroundImage: AssetImage(userdpList[0]),),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Center(
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Usernickname...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "10",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    kw35,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1470",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "followers",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    kw35,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1635",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "following",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    kw35,
                  ],
                ),
              ],
            ),
          ],
        ),
        kh5,
        // RichText(text: )
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Nothing is impossible",
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
