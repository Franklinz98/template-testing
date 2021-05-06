import 'package:f_social_network/presentation/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  final String picUrl;

  // Creating a custom AppBar that extends from Appbar with super();
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
              style: AppTextStyle.appBarTitle,
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
