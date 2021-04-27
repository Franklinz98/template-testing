import 'package:f_social_network/ui/pages/content/states/widgets/state_card.dart';
import 'package:flutter/material.dart';

class UsersStates extends StatefulWidget {
  UsersStates({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<UsersStates> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        StateCard(
            title: 'Iony Houst',
            content: 'Lorem ipsum dolor sit amet.',
            picUrl: 'picUrl',
            onChat: () => {}),
      ],
    );
  }
}
