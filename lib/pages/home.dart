import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia/pages/chatscreen.dart';
import 'package:socialmedia/pages/reel2.dart';
import 'package:socialmedia/util/bubble_stories.dart';
import 'package:socialmedia/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'kotathefriend',
    'obama',
    'mitch',
    'joeybadass',
    'zuckerberg'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 90.0),
                child: Container(
                  width: 250,
                  child: TabBar(
                    indicatorColor: Colors.pink[100],
                    labelColor: Colors.yellow,
                    unselectedLabelColor: Colors.white,
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'Matches'),
                      Tab(text: 'Pop ups'),
                      Tab(
                        text: 'Spotlights',
                      ),
                      Tab(
                        text: 'Fans',
                      ),
                      Tab(
                        text: 'Prize',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: IconButton(
                icon: Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                ),
                color: Colors.white,
                splashColor: Colors.purple,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => chatscreen()));
                },
              ),
            )
          ],

          /*   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SocialMedia',
                  style: TextStyle(color: Colors.white ),
                ),

                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // do something..
                      },
                      child: Icon(Icons.add, color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Icon(Icons.search, color: Colors.white,),
                    ),
                    Icon(Icons.share , color: Colors.white,),
                  ],
                )
              ],
            ),

          */
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 3.0,
                ),
                // carousel
                /*    SizedBox(
                  height: 100.0,
                  width: 350.0,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    images: [
                      NetworkImage('https://media.istockphoto.com/vectors/diwali-festival-deals-and-offers-with-gift-box-vector-id626231016'),
                      NetworkImage('https://cdn.mos.cms.futurecdn.net/eG9dwWMNrFwoc4uW4YHS2Z-768-80.jpg'),
                      NetworkImage('https://www.rummymillionaire.com/wp-content/uploads/2017/10/grand-diwali-dhamaka-rummy-tournament.png'),
                      NetworkImage('https://akm-img-a-in.tosshub.com/aajtak/images/photo_gallery/202101/flipkart_sale_banner.jpg'),

                      // ExactAssetImage("assets/images/LaunchImage.jpg"),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.grey,
                    indicatorBgPadding: 4,
                    dotBgColor: Colors.transparent,
                    borderRadius: true,


                  ),


                ), */

                // Row(
                //   children: [
                //     ListView.builder(
                //         scrollDirection: Axis.horizontal,
                //         itemCount: people.length,
                //         itemBuilder: (context, index) {
                //           return BubbleStories(text: people[index]);
                //         })
                //   ],
                // ),

                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: people.length,
                      itemBuilder: (context, index) {
                        return BubbleStories(text: people[index]);
                      }),
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 4,
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
          ),
        ),
      ),
    );
  }
}
