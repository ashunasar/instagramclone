import 'package:flutter/material.dart';
import 'package:instagram_clone/modals/post_modal.dart';
import 'package:instagram_clone/modals/story_modal.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//? Insta Home Widget

//? Insta Body Widget

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: InstaList(),
        )
      ],
    );
  }
}

//? Insta List Widget

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemBuilder: (context, i) => i == 0
          ? SizedBox(
              height: height * 0.17,
              child: InstaStories(),
            )
          : Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              height: height * 0.67,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(posts[i].profilePic),
                            ),
                            SizedBox(width: 10),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  posts[i].profileName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    letterSpacing: 0.6,
                                    color: Color(0xff42444a),
                                  ),
                                  // textAlign: TextAlign.center,
                                ),
                                // day
                                Text(
                                  "${posts[i].day} Day Ago",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    letterSpacing: 0.6,
                                    color: Colors.blueGrey,
                                    // color: Color(0xffe9edf3),
                                  ),
                                  // textAlign: TextAlign.start,
                                ),
                              ],
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: height * 0.47,
                    width: height * 0.47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(posts[i].postPic),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: height * 0.02),
                        height: height * 0.08,
                        width: width / 1.7,
                        // color: Colors.red,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              width: 35,
                              image: AssetImage(
                                'assets/images/heart.png',
                              ),
                            ),
                            Text('2,940'),
                            SizedBox(width: width / 9),
                            Image(
                              width: 45,
                              image: AssetImage('assets/images/comment.png'),
                            ),
                            Text('145')
                          ],
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: height * 0.02),
                        height: height * 0.08,
                        width: width / 3,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                              width: 40,
                              image: AssetImage('assets/images/send.png'),
                            ),
                            SizedBox(width: 10),
                            Icon(MdiIcons.bookmarkOutline),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
      itemCount: posts.length,
    );
  }
}

//? Insta Stories Widget
class InstaStories extends StatelessWidget {
  // final topText = Row(
  //   mainAxisAlignment: MainAxisAlignment.end,
  //   children: [
  //     Text(
  //       "Designed By Ashu ",
  //       style: TextStyle(fontWeight: FontWeight.bold),
  //     )
  //     // Row(children: [
  //     //   Icon(Icons.play_arrow),
  //     //   Text(
  //     //     "Ashu",
  //     //     style: TextStyle(fontWeight: FontWeight.bold),
  //     //   )
  //     // ])
  //   ],
  // );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Stack(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(storyData[i].imgUrl),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            i == 0
                ? Positioned(
                    bottom: 35,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 14,
                        color: Colors.white,
                      ),
                    ))
                : Container(),
          ],
        ),
        itemCount: storyData.length,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // topText,
          stories,
          // Divider(
          //   height: 2,
          //   thickness: 1.5,
          // ),
        ],
      ),
    );
  }
}
