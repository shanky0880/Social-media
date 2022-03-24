import 'package:flutter/material.dart';
import 'package:socialmedia/pages/profilepostdata.dart';
import 'package:socialmedia/util/bubble_stories.dart';
import 'package:socialmedia/util/user_posts.dart';
import '../util/account_tab1.dart';
import '../util/account_tab2.dart';
import '../util/account_tab3.dart';
import '../util/account_tab4.dart';
import 'package:socialmedia/pages/drawer.dart';

import 'listpanel.dart';

class UserAccount extends StatefulWidget {
  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  final List people = [
    'pm_narendramodi',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          //leading: Icon(Icons.person_add, color: Colors.white),
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu, color: Colors.white),
            );
          }),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.person_add,
                color: Colors.white,
              ),
            )
          ],
        ),
        backgroundColor: Color(0xFF2c3e50),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // profile
              SizedBox(height: 10),
              Container(
                height: 100,
                width: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(4,4)
                    ),
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(-4,-4)
                    )
                  ],
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.newindianexpress.com/uploads/user/imagelibrary/2020/4/10/w1200X800/Narendra_Modi_AP.jpg")),
                ),
              ),

              // username
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '@pm_narendramodi',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),

              // bio
              Text(
                'I Love my country INDIA 💙❤💛💛 ..',
                style: TextStyle(color: Colors.white),
              ),
              // SizedBox(height: 5),

              SizedBox(height: 5),

              // buttons -> edit profile, insta links, bookmark
              /*   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ],
              ), */

              SizedBox(height: 15),

              Container(
                color: Color(0xFF2c3e50),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 80,
                    left: 80,
                  ),
                  child: TabBar(
                    indicatorColor: Colors.pink[100],
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.brown,
                          size: 25,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.pages,
                          color: Colors.blue,
                          size: 25,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.whatshot,
                          color: Colors.red,
                          size: 25,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.emoji_events,
                          color: Colors.orange,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // number of following, followers, likes
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            Text(
                              '37',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Friends',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              '8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Followers',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              '56',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '  Following  ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              Container(height: 120, child: MyAppi()),

              Container(
                  height: MediaQuery.of(context).size.height * 3,
                  child: FirstTab()),
            ],
          ),
        ),
      ),
    );
  }
}
