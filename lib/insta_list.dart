import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_stories.dart';
import 'modals/post_modal.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemBuilder: (context, i) => i == 0
          ? SizedBox(
              height: height * 0.17,
              child: InstaStories(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 8, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(posts[i].profilePic),
                          ),
                          SizedBox(width: 10),
                          Text(posts[i].profileName)
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.asset(
                    posts[i].postPic,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            width: 40,
                            image: AssetImage('assets/images/heart.png'),
                          ),
                          Image(
                            width: 50,
                            image: AssetImage('assets/images/comment.png'),
                          ),
                          Image(
                            width: 40,
                            image: AssetImage('assets/images/send.png'),
                          ),
                        ],
                      ),
                      Image(
                        width: 30,
                        image: AssetImage('assets/images/save.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Liked by ${posts[i].likedBy} and ${posts[i].otherLIkesCount} others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(posts[i].profilePic),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment..."),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("${posts[i].day} Day Ago"),
                )
              ],
            ),
      itemCount: posts.length,
    );
  }
}
