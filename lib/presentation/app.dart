import 'package:f_social_network/data/repositories/firebase.dart';
import 'package:f_social_network/presentation/pages/authentication/index.dart';
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
  final Future<FirebaseApp> _initialization =
      FirebaseManagement().initFirebase();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // TODO Check for errors
        if (snapshot.hasError) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyTheme.ligthTheme,
            darkTheme: MyTheme.darkTheme,
            home: Authentication(),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyTheme.ligthTheme,
            darkTheme: MyTheme.darkTheme,
            home: Authentication(),
          );
        }

        // TODO Otherwise, show something whilst waiting for initialization to complete
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: MyTheme.ligthTheme,
          darkTheme: MyTheme.darkTheme,
          home: Authentication(),
        );
      },
    );
  }
}
