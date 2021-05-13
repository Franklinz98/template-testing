import './widgets/state_card.dart';
import 'package:flutter/material.dart';

class UsersStates extends StatefulWidget {
  // UsersStates empty constructor
  UsersStates({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

// UsersStates custom state
class _State extends State<UsersStates> {
  final items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        // StateCard usage example
        return StateCard(
          title: 'Iony Houst',
          content: 'Lorem ipsum dolor sit amet.',
          picUrl: 'https://uifaces.co/our-content/donated/gPZwCbdS.jpg',
          onChat: () => {},
        );
      },
    );
  }
}
