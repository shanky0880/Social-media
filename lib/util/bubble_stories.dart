import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  // final String text1;

  BubbleStories({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              )),
          SizedBox(
            height: 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}
