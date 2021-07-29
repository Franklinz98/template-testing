import 'dart:developer';

import 'package:f_social_network/domain/use_case/controller.dart';
import 'package:f_social_network/presentation/pages/authentication/index.dart';
import 'package:f_social_network/presentation/pages/content/index.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme/theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Dependency injection: setting up state management
  final Controller controller = Get.put(Controller());

  @override
  void initState() {
    // State management: listening for changes on currentUser
    ever(controller.currentUser, (user) {
      log('ever: ${user != null}');
      // Using Get.off so we can't go back when auth changes
      // This navigation triggers automatically when auth state changes on the app state
      if (user != null) {
        Get.off(() => ContentPage());
      } else {
        Get.off(() => Authentication());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyTheme.ligthTheme,
      darkTheme: MyTheme.darkTheme,
      home: Authentication(),
    );
  }
}
