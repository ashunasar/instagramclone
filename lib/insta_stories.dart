import "package:flutter/material.dart";
import 'modals/story_modal.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        "Designed By Ashu ",
        style: TextStyle(fontWeight: FontWeight.bold),
      )
      // Row(children: [
      //   Icon(Icons.play_arrow),
      //   Text(
      //     "Ashu",
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   )
      // ])
    ],
  );

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
                    bottom: 20,
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
          topText,
          stories,
          Divider(
            height: 2,
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
