import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/sizedboxes.dart';

class ProfilePageActionButtons extends StatelessWidget {
  const ProfilePageActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAro,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(180, 224, 224, 224),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 7),
              child: Text(
                "Edit profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          kw7,
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(180, 224, 224, 224),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 7),
              child: Text(
                "Share profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          kw7,
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(180, 224, 224, 224),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
              child: Icon(Icons.person_add_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
