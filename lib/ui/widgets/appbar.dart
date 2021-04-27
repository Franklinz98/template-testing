import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends AppBar {
  String picUrl;

  CustomAppBar({Key? key, required this.picUrl})
      : super(
            key: key,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Center(
              child: CircleAvatar(
                minRadius: 18.0,
                maxRadius: 18.0,
                backgroundImage: NetworkImage(picUrl),
              ),
            ),
            title: Text(
              'title'.toUpperCase(),
              style: GoogleFonts.openSans(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ]);
}
