import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constant_strings.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';
import 'package:instagram_ui/constants/userlist.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                textAlign: TextAlign.start,
                "Last 7 days",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(child: NotficationScreenSection(tempVal: 0)),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                textAlign: TextAlign.start,
                "Last 30 days",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(child: NotficationScreenSection(tempVal: 3)),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                textAlign: TextAlign.start,
                "Older",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(child: NotficationScreenSection(tempVal: 4)),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                textAlign: TextAlign.start,
                "Suggested for you",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(
              child: ListView.separated(
                separatorBuilder: (context, index) => kh10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder:
                    (context, index) => ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(defaultImg),
                      ),
                      title: Text(
                        "username-23uo",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Row(
                      //   children: [
                      //     CircleAvatar(
                      //       radius: 12,
                      //       backgroundColor: Colors.blue,
                      //     ),
                      //     Text(" Followed by_suerdljasld"),
                      //   ],
                      // ),
                      trailing: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(7),
                          ),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationScreenFollowUnfollowSection extends StatelessWidget {
  final bool isFollwing;
  const NotificationScreenFollowUnfollowSection({
    super.key,
    required this.isFollwing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(defaultImg),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "username_32 ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "started folllowing you.",
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(text: " 2d", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
      trailing: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: isFollwing == false ? Colors.blue : Colors.grey.shade800,
        ),
        child: Center(
          child: Text(
            isFollwing == false ? "Follow back" : "Following",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class NotficationScreenSection extends StatelessWidget {
  final int tempVal;
  const NotficationScreenSection({super.key, required this.tempVal});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.yellow,
      child: ListView.separated(
        separatorBuilder: (context, index) => kh10,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder:
            (context, index) =>
                index == tempVal
                    ? NotficationScreenStoryLiked()
                    : NotificationScreenFollowUnfollowSection(
                      isFollwing: index >= 2 ? true : false,
                    ),
      ),
    );
  }
}

class NotficationScreenStoryLiked extends StatelessWidget {
  const NotficationScreenStoryLiked({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 80,
        width: 60,
        child: Stack(
          children: [
            Positioned(
              // right: 10,
              // left: 15,
              top: 0,
              right: 16,
              bottom: 0,
              child: CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage(defaultImg),
              ),
            ),
            Positioned(
              // right: 14,
              left: 20,
              bottom: -0,
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage(usericondp),
              ),
            ),
          ],
        ),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "username_32, username345",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: " and others liked your story",
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(text: " 2d", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
      // subtitle: const Text("name index"),
      trailing: Container(
        height: 55,
        width: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(userPostList[4]),
            fit: BoxFit.cover,
          ),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      //  Container(
      //   height: 30,
      //   width: 80,
      //   decoration: BoxDecoration(
      //     borderRadius: const BorderRadius.all(
      //       Radius.circular(7),
      //     ),
      //     color: Colors.grey.shade800,
      //   ),
      //   child: const Center(child: Text("Follow")),
      // ),
    );
  }
}

// class NotficationScreenSection extends StatelessWidget {
//   const NotificationScreenStoryLikedSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             Container(
//               width: 83,
//               height: 75,
//               // color: Colors.green,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // right: 10,
//                     left: 15,
//                     top: 0,
//                     bottom: 0,
//                     child: CircleAvatar(radius: 20),
//                   ),
//                   Positioned(
//                     right: 14,
//                     bottom: -0,
//                     child: CircleAvatar(
//                       radius: 20,
//                       backgroundColor: Colors.blue,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               width: 255,
//               height: 40,
//               // color: Colors.black,
//               //  child: RichText(
//               //     text: TextSpan(

//               //       children: [
//               //         TextSpan(text: "username_23.45, usernmae_859"),
//               //         TextSpan(text: "jsdjfljaldsfjl aksdlffklasdk")
//               //       ],
//               //     ),
//               //   ),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Username23, username23",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(width: 5),
//                       Text("and ohters", style: TextStyle(color: Colors.black)),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         "liked your story.",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                       Text("2d", style: TextStyle(color: Colors.grey)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         Container(
//           height: 60,
//           width: 55,
//           decoration: BoxDecoration(
//             color: Colors.grey,
//             borderRadius: BorderRadius.circular(12),
//           ),
//         ),
//         kw7,
//       ],
//     );
//   }
// }
