import 'package:f_social_network/domain/use_case/controller.dart';
import 'package:f_social_network/presentation/pages/authentication/login/login_page.dart';
import 'package:f_social_network/presentation/pages/authentication/signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Authentication> {
  Widget? _content;

  // Dependency injection
  final Controller controller = Get.find();

  // NavBar action
  void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case 1:
          _content = LoginPage(
            onViewSwitch: () => _onItemTapped(2),
            controller: controller,
          );
          break;
        case 2:
          _content = SignUpPage(
            onViewSwitch: () => _onItemTapped(1),
            controller: controller,
          );
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _content = LoginPage(
      onViewSwitch: () => _onItemTapped(2),
      controller: controller,
    );
  }

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: _content,
          ),
        ),
      ),
    );
  }
}
