import 'package:flutter/material.dart';
import 'package:socialmedia/util/user_posts.dart';

class FirstTab extends StatelessWidget {
  final List people = [
    'pm_narendramodi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 2.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return UserPosts(
                        name: people[index],
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
