import 'package:f_social_network/domain/use_case/controller.dart';
import 'package:f_social_network/presentation/pages/content/location/index.dart';
import 'package:f_social_network/presentation/pages/content/public_offers/index.dart';
import 'package:f_social_network/presentation/pages/content/states/index.dart';
import 'package:f_social_network/presentation/pages/content/users_offers/index.dart';
import 'package:f_social_network/presentation/theme/colors.dart';
import 'package:f_social_network/presentation/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentPage extends StatelessWidget {
  // Dependency injection: State management controller
  final Controller controller = Get.find();

  // View title
  Widget _getTitle(int index, BuildContext context) {
    String _title;
    switch (index) {
      case 1:
        _title = "Social";
        break;
      case 2:
        _title = "Verificado";
        break;
      case 3:
        _title = "Ubicaciones";
        break;
      case 4:
        _title = "Perfil";
        break;
      default:
        _title = "Estados";
    }
    return Text(
      _title.toUpperCase(),
      style: Theme.of(context).textTheme.headline1,
    );
  }

  // View content
  Widget _getScreen(int index) {
    switch (index) {
      case 1:
        return UsersOffers();
      case 2:
        return PublicOffers();
      case 3:
        return UsersLocation();
      case 4:
        return Container();
      default:
        return UsersStates();
    }
  }

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          // Fetching state value, with reactivity using Obx
          tile: Obx(() => _getTitle(controller.screenIndex.value, context)),
          picUrl: "",
          context: context,
          onSignOff: () {
            // User sign off, updating state
            controller.currentUser(false);
          }),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            // Fetching state value, with reactivity using Obx
            child: Obx(() => _getScreen(controller.screenIndex.value)),
          ),
        ),
      ),
      // Content screen navbar
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb_outline_rounded),
                label: 'Estados',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group_outlined),
                label: 'Social',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.public_outlined),
                label: 'Verificado',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.place_outlined),
                label: 'Ubicación',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Perfil',
              ),
            ],
            currentIndex: controller.screenIndex.value,
            unselectedItemColor: Colors.black87,
            selectedItemColor: AppColors.mountainMeadow,
            onTap: controller.updateScreenIndex,
          )),
    );
  }
}
