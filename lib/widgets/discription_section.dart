import 'package:flutter/material.dart';

class DiscriptionSection extends StatefulWidget {
  const DiscriptionSection({super.key});

  @override
  State<DiscriptionSection> createState() => _DiscriptionSectionState();
}

class _DiscriptionSectionState extends State<DiscriptionSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style:
            TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  "Course Length:",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(
                    Icons.timer,
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 5,),
                Text(
                    "26 Hours",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "Rating",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(
                  Icons.timer,
                  color: Colors.amber,
                ),
                SizedBox(width: 5,),
                Text(
                  "",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),)
              ],
            ),
          ],
        ));
  }
}
