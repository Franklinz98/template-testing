import 'package:f_social_network/presentation/pages/content/public_offers/index.dart';
import 'package:f_social_network/presentation/widgets/appbar.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        picUrl: 'https://uifaces.co/our-content/donated/gPZwCbdS.jpg',
        context: context,
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
