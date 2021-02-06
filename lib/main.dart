import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/screens/chat_page_new.dart';
import 'package:instagram_clone/screens/chat_page_new1.dart';
import 'package:instagram_clone/screens/insta_home.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   //   // statusBarColor: Colors.black, //or set color with: Color(0xFF0000FF)
  //   systemNavigationBarColor: Colors.red,
  //   systemNavigationBarDividerColor: Colors.purple,
  //   statusBarIconBrightness: Brightness.dark,
  //   // statusBarBrightness: Brightness.dark,
  // ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  PageController controller = PageController();
  var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              headline6: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(headline6: TextStyle(color: Colors.black))),
      title: "Instaclone",
      home: PageView(
        controller: controller,
        physics: BouncingScrollPhysics(),
        // pageSnapping: false,
        onPageChanged: (value) {
          print(value);
        },
        children: [
          // GestureDetector(
          // child:
          InstaHome(),
          // onHorizontalDragEnd: (DragEndDetails details) {
          //   if (details.primaryVelocity > 0) {
          //     // User swiped Left
          //     print('Swiped Left');
          //   } else if (details.primaryVelocity < 0) {
          //     // User swiped Right
          //     print('Swiped Right');
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => ProfilePage()));
          //   }
          // }
          // ),
          // Container(
          //   color: Colors.red,
          // )
          // ProfilePage(),
          // ChatPage(),
          ChatAppNew1(),
        ],
      ),
    );
  }
}
