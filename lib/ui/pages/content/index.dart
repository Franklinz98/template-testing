import 'package:f_social_network/ui/pages/content/public_offers/index.dart';
import 'package:f_social_network/ui/pages/content/users_offers/index.dart';
import 'package:f_social_network/ui/widgets/appbar.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        picUrl: 'https://uifaces.co/our-content/donated/gPZwCbdS.jpg',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: PublicOffers(),
        ),
      ),
    );
  }
}
