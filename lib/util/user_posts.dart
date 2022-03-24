import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit:BoxFit.cover,
                          image: NetworkImage("https://images.newindianexpress.com/uploads/user/imagelibrary/2020/4/10/w1200X800/Narendra_Modi_AP.jpg")

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),

        // post
        Container(
          height: 260,
          //color: Colors.grey[300],
          decoration: BoxDecoration(
            //color: Colors.grey[300],
            //shape: BoxShape.circle,
            image: DecorationImage(fit:BoxFit.cover, image: NetworkImage("https://img.etimg.com/thumb/msid-75572296,width-640,resizemode-4,imgsize-507941/bmw-ninet.jpg")

            ),
          ),


        ),

        // below the post -> buttons and comments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        // like by...
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(children: [
            Text('Liked by '),
            Text(
              'mitchkoko',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(' and '),
            Text(
              'others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
        ),

        // caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' i turn the dirt they throwing into riches til im filthy'),
              ],
            ),
          ),
        ),

        // comments
      ],
    );
  }
}
