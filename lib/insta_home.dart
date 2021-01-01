import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt_outlined),
    title: SizedBox(
      height: 35,
      child: Image.asset('assets/images/insta_text_logo.png'),
    ),
    actions: [
      Image(
        width: 40,
        image: AssetImage('assets/images/send.png'),
      ),
      // SizedBox(width: 5)
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.add_box_outlined),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
