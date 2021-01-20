import 'package:instagram_clone/screens/chat_page.dart';
import 'package:instagram_clone/screens/insta_profile.dart';
import 'package:instagram_clone/screens/profile_page.dart';
import 'package:instagram_clone/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  // final topBar = AppBar(
  //   backgroundColor: Color(0xffe9edf3),
  //   centerTitle: true,
  //   elevation: 0,
  //   leading: Image.asset(
  //     'assets/images/camera.png',
  //     width: 20,
  //   ),
  //   title: SizedBox(
  //     height: 35,
  //     child: Image.asset('assets/images/insta_text_logo.png'),
  //   ),
  //   actions: [
  //     Image(
  //       width: 30,
  //       image: AssetImage('assets/images/igtv.png'),
  //     ),
  //     Image(
  //       width: 40,
  //       image: AssetImage('assets/images/send.png'),
  //     ),
  //      SizedBox(width: 5)
  //   ],
  // );

  List<IconData> iconList = [
    MdiIcons.homeVariantOutline,
    MdiIcons.magnify,
    MdiIcons.heartOutline,
    MdiIcons.accountOutline,
  ];
  var _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onHorizontalDragEnd: (DragEndDetails details) {
      //   if (details.primaryVelocity > 0) {
      //     // User swiped Left
      //     print('Swiped Left');
      //   } else if (details.primaryVelocity < 0) {
      //     // User swiped Right
      //     print('Swiped Right');
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => ChatPage()));
      //   }
      // },
      child: Scaffold(
        backgroundColor: Color(0xffe9edf3),
        appBar: AppBar(
          backgroundColor: Color(0xffe9edf3),
          centerTitle: true,
          elevation: 0,
          leading: Container(
            // color: Colors.red,
            padding: EdgeInsets.all(5),
            child: Image.asset(
              'assets/images/camera.png',
              width: 10,
            ),
          ),
          title: SizedBox(
            height: 35,
            child: Image.asset('assets/images/insta_text_logo.png'),
          ),
          actions: [
            Image(
              width: 25,
              image: AssetImage('assets/images/igtv.png'),
            ),
            SizedBox(width: 5),
            Image(
              width: 40,
              image: AssetImage('assets/images/send.png'),
            ),
            // SizedBox(width: 5)
          ],
        ),
        body: InstaBody(),
        floatingActionButton: FloatingActionButton(
          child: Container(
            width: 60,
            height: 60,
            child: Icon(
              Icons.add,
              // size: 40,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                // transform: GradientRotation(3.14 / 1),
                colors: [
                  Color(0xff405DE6),
                  // Color(0xff5851DB),
                  // Color(0xff833AB4),
                  Color(0xffC13584),
                  Color(0xffE1306C),
                  Color(0xffFD1D1D),
                  Color(0xffF56040),
                  Color(0xffF77737),
                  Color(0xffFCAF45),
                  Color(0xffFFDC80),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          onPressed: () {},

          //params
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: AnimatedBottomNavigationBar(
            icons: iconList,
            activeIndex: _bottomNavIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            // leftCornerRadius: 30,
            // rightCornerRadius: 30,
            onTap: (index) => setState(() {
              _bottomNavIndex = index;
              // print(_bottomNavIndex);
              // iconList[0] = Icons.add;
              switch (_bottomNavIndex) {
                case 0:
                  // iconList[0] = MdiIcons.homeVariant;

                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => InstaHome()));

                  iconList = [
                    MdiIcons.homeVariant,
                    MdiIcons.magnify,
                    MdiIcons.heartOutline,
                    MdiIcons.accountOutline,
                  ];
                  break;
                case 2:
                  // iconList[2] = MdiIcons.heart;
                  iconList = [
                    MdiIcons.homeVariantOutline,
                    MdiIcons.magnify,
                    MdiIcons.heart,
                    MdiIcons.accountOutline,
                  ];
                  break;
                case 3:
                  // iconList[3] = MdiIcons.account;
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                  iconList = [
                    MdiIcons.homeVariantOutline,
                    MdiIcons.magnify,
                    MdiIcons.heartOutline,
                    MdiIcons.account,
                  ];
                  break;
              }
            }),
            activeColor: Colors.deepOrangeAccent,
            // backgroundColor: Colors.grey,
            inactiveColor: Colors.blueAccent,
            splashColor: Colors.orange,
            // splashRadius: ,
          ),
        ),
      ),
    );
  }
}
