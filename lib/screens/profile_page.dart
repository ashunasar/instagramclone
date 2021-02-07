import 'dart:ui';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/modals/story_modal.dart';
import 'package:instagram_clone/screens/insta_home.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:peek_and_pop_dialog/peek_and_pop_dialog.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<IconData> iconList = [
    MdiIcons.homeVariantOutline,
    MdiIcons.magnify,
    MdiIcons.heartOutline,
    MdiIcons.accountOutline,
  ];

  var _bottomNavIndex = 3;
  ScrollController _scrollController =
  new ScrollController();
  @override
  void initState() {
    super.initState();
    handleScroll();
  }

  @override
  void dispose() {
    _scrollController.removeListener(() {});
    super.dispose();
  }
  bool _show = false;
  void showButton() {
    setState(() {
      _show = true;
    });
  }

  void hideButton() {
    setState(() {
      _show = false;
    });
  }

  void handleScroll()  {
    _scrollController.addListener(() {
      // if (_scrollController.position.userScrollDirection ==
      //     ScrollDirection.reverse) {
      //   showButton();
      //   print(_scrollController.position.pixels);
      //   // if(_scrollController.position.hasPixels){}
      //   // print("reverse");
      // }
      // if (_scrollController.position.userScrollDirection ==
      //     ScrollDirection.forward) {
      //
      //   hideButton();
      //   // print("forward");
      // }
      //print(_scrollController.position.pixels);
      if(_scrollController.position.pixels >=276){
        showButton();
      }else{
        hideButton();
      }

    });
  }
  @override
  Widget build(BuildContext context) {
  //  var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffe9edf3),
      appBar: AppBar(
        backgroundColor: Color(0xffe9edf3),
        centerTitle: false,
        elevation: 0,
        title: Text(
          'Ashu Nasar',
          style: GoogleFonts.hindSiliguri(
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [Visibility(
            visible: _show,
            child: RaisedButton(color: Color(0xffe9edf3),
                child: Text("Follow",style:TextStyle(color: Colors.blueAccent)), onPressed: () {}))],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(left: 20),
                  // color: Colors.red,
                  child: CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/images/storyPic (10).jpg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ashu Nasar',
                        style: GoogleFonts.hindSiliguri(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      // SizedBox(height: 5),
                      Text(
                        'Developer',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Programmer',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 3),

                      Text(
                        'https://github.com/ashunasar',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 1,
              color: Colors.black12,
              margin: EdgeInsets.symmetric(horizontal: 15),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UserInfoCount(
                  count: "490",
                  countInfoFor: 'Posts',
                ),
                UserInfoCount(
                  count: "280K",
                  countInfoFor: 'Followers',
                ),
                UserInfoCount(
                  count: "113",
                  countInfoFor: 'Following',
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 1,
              color: Colors.black12,
              margin: EdgeInsets.symmetric(horizontal: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    height: 50.0,
                    width: width - 140,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Text(
                        'Follow',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          letterSpacing: .5,
                          fontWeight: FontWeight.bold,
                          // fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffe6ffee),
                      image: DecorationImage(
                          image: AssetImage('assets/images/send.png')),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 15),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(storyData[i].imgUrl),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                    ],
                  ),
                  itemCount: storyData.length,
                ),
              ),
            ),
            SizedBox(width: 15),
            GridView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: width * 0.03,
                  mainAxisSpacing: width * 0.03),
              children: [
                ProfileDialogBuild(
                  width: width,
                  imgUrl: "assets/images/posts (1).jpg",
                ),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (2).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (3).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (4).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (5).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (6).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (7).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (8).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (9).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (10).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/posts (12).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (1).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (2).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (3).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (4).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (5).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (6).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (7).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (8).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (9).jpg"),
                ProfileDialogBuild(
                    width: width, imgUrl: "assets/images/storyPic (10).jpg"),
              ],
            ),
          ],
        ),
      ),
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
                Navigator.of(context).pushReplacement(
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
    );
  }
}

class ProfileDialogBuild extends StatelessWidget {
  const ProfileDialogBuild({
    @required this.width,
    @required this.imgUrl,
  });
  final String imgUrl;
  final double width;

  @override
  Widget build(BuildContext context) {
    return PeekAndPopDialog(
        dialog: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: width - 50,
            width: width - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
              DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
            ),
          ),
        ),
        child: Container(
          height: (width / 3) - 10,
          width: (width / 3) - 10,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            image:
            DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
          ),
        ));
  }
}

class UserInfoCount extends StatelessWidget {
  final String count;
  final String countInfoFor;
  const UserInfoCount({this.count, this.countInfoFor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 2),
        Text(
          countInfoFor,
          style: GoogleFonts.lato(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
