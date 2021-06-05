import 'package:firebase_core/firebase_core.dart';

abstract class AbstractFirebase {
  Future<FirebaseApp> initFirebase();
}