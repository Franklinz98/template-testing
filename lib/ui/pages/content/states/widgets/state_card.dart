import 'package:f_social_network/ui/widgets/card.dart';
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
          topRightWidget: IconButton(
            icon: Icon(
              Icons.chat_outlined,
              color: const Color(0xFF1EB59C),
            ),
            onPressed: onChat,
          ),
        );
}
