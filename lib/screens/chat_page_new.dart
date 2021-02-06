import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatAppNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Color(0xffe9edf3),
      backgroundColor: Color(0xff4d63fe),
      // appBar: AppBar(
      //   leading: IconButton(
      //       icon: Icon(Icons.arrow_back),
      //       onPressed: () {
      //         print("Hello");
      //         print(controller.page);
      //         // use this to animate to the page
      //         controller.animateToPage(0,
      //             duration: Duration(milliseconds: 400),
      //             curve: Curves.easeIn);

      //         // controller.
      //       }),
      //   backgroundColor: Color(0xffe9edf3),
      //   elevation: 0,
      //   title: Text(
      //     'Ashu Nasar',
      //     style: GoogleFonts.hindSiliguri(
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   // color: Color(0xff4d63fe),
          //   height: 200,
          //   width: double.infinity,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [

          //     ],
          //   ),
          // )
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Message',
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                )),
          ),
          SizedBox(height: 40),
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text('Favorite Chat',
                        style: GoogleFonts.raleway(
                          fontSize: 20,
                          // color: Color(0xff4d63fe),
                          color: Colors.black,
                        )),
                    SizedBox(height: 20),
                    Container(
                      // color: Colors.red,
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          BuildFavoriteChat(
                              imgPath: 'assets/images/profilePic2.jpg',
                              name: "Alok"),
                          BuildFavoriteChat(
                              imgPath: 'assets/images/profilePic1.jpg',
                              name: "Kritik"),
                          BuildFavoriteChat(
                              imgPath: 'assets/images/profilePic3.jpg',
                              name: "Ayesha"),
                          BuildFavoriteChat(
                              imgPath: 'assets/images/profilePic4.jpg',
                              name: "Anukriti"),
                          BuildFavoriteChat(
                              imgPath: 'assets/images/profilePic5.jpg',
                              name: "Sherda"),
                          BuildFavoriteChat(
                              imgPath: 'assets/images/profilePic11.jpg',
                              name: "Gourav"),
                          BuildFavoriteChat(
                              imgPath: 'assets/images/profilePic13.jpg',
                              name: "Rahul"),
                          BuildFavoriteChat(
                              imgPath: 'assets/images/profilePic12.jpg',
                              name: "Sami"),
                        ],
                      ),
                    ),
                    // SizedBox(height: 30),
                    Text('Last Chat',
                        style: GoogleFonts.raleway(
                          fontSize: 20,
                          // color: Color(0xff4d63fe),
                          color: Colors.black,
                        )),
                    SizedBox(height: 20),
                    BuildLastChatWidget(
                        imagePath: 'assets/images/profilePic5.jpg',
                        name: "Sherda",
                        lastMessage: "How was your day?",
                        time: "12:20",
                        width: width),
                    BuildLastChatWidget(
                        imagePath: 'assets/images/profilePic2.jpg',
                        name: "Alok",
                        lastMessage: "Good night ❤",
                        time: "10:46",
                        width: width),
                    BuildLastChatWidget(
                        imagePath: 'assets/images/profilePic13.jpg',
                        name: "Gourav",
                        lastMessage: "Ashu milega abhi?",
                        time: "08:12",
                        width: width),
                    BuildLastChatWidget(
                        imagePath: 'assets/images/profilePic12.jpg',
                        name: "Sami",
                        lastMessage: "makada😂",
                        time: "07:46",
                        width: width),
                    BuildLastChatWidget(
                        imagePath: 'assets/images/profilePic4.jpg',
                        name: "Anukriti",
                        lastMessage: "Kaisa hai?",
                        time: "06:02",
                        width: width),
                    BuildLastChatWidget(
                        imagePath: 'assets/images/profilePic11.jpg',
                        name: "Gourav",
                        lastMessage: "oye free hai?",
                        time: "05:11",
                        width: width),
                    BuildLastChatWidget(
                        imagePath: 'assets/images/profilePic3.jpg',
                        name: "Ayesha",
                        lastMessage: "padh le kuch😂",
                        time: "03:28",
                        width: width),
                    BuildLastChatWidget(
                        imagePath: 'assets/images/profilePic1.jpg',
                        name: "Kritik",
                        lastMessage: "Finish hua?",
                        time: "02:37",
                        width: width),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BuildLastChatWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String lastMessage;
  final String time;
  const BuildLastChatWidget({
    Key key,
    @required this.imagePath,
    @required this.name,
    @required this.lastMessage,
    @required this.time,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage(
                imagePath,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              // color: Colors.red,
              width: width * 0.58,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(name,
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(height: 10),
                  Text(lastMessage,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(time,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    // color: Colors.black,
                  )),
            ),
          ],
        ),
        SizedBox(height: 5),
        Divider(
          height: 10,
          // color: Colors.grey,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class BuildFavoriteChat extends StatelessWidget {
  final String imgPath;
  final String name;
  const BuildFavoriteChat({this.imgPath, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage(
              imgPath,
            ),
          ),
          SizedBox(height: 5),
          Text(name,
              style: GoogleFonts.raleway(
                fontSize: 14,
                color: Color(0xff4d63fe),
                // color: Colors.black,
              ))
        ],
      ),
    );
  }
}
