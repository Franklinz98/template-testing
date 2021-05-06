import 'package:f_social_network/presentation/theme/colors.dart';
import 'package:f_social_network/presentation/widgets/card.dart';
import 'package:flutter/material.dart';

class StateCard extends AppCard {
  final String title, content, picUrl;
  final VoidCallback onChat;

  StateCard(
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
                backgroundImage: NetworkImage(picUrl),
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
