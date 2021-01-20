import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onHorizontalDragEnd: (DragEndDetails details) {
      //   if (details.primaryVelocity > 0) {
      //     // User swiped Left
      //     print('Swiped Left');
      //     Navigator.pop(context);
      //     // pro
      //   }
      // },
      child: Scaffold(
        backgroundColor: Color(0xffe9edf3),
        appBar: AppBar(
          backgroundColor: Color(0xffe9edf3),
          elevation: 0,
          title: Text(
            'Ashu Nasar',
            style: GoogleFonts.hindSiliguri(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
