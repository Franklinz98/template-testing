import 'package:f_social_network/ui/theme/colors.dart';
import 'package:f_social_network/ui/widgets/card.dart';
import 'package:flutter/material.dart';

class PostCard extends AppCard {
  final String title, content, picUrl;
  final VoidCallback onChat;
  PostCard(
      {Key? key,
      required this.title,
      required this.content,
      required this.picUrl,
      required this.onChat})
      : super(
          title: title,
          content: content,
          topLeftWidget: SizedBox(
            height: 48.0,
            width: 48.0,
            child: Center(
              child: CircleAvatar(
                minRadius: 14.0,
                maxRadius: 14.0,
                backgroundImage: NetworkImage(
                    picUrl),
              ),
            ),
          ),
          topRightWidget: IconButton(
            icon: Icon(
              Icons.chat_outlined,
              color: AppColors.mountainMeadow,
            ),
            onPressed: onChat,
          ),
        );
}
