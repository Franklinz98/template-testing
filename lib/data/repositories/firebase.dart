import 'package:f_social_network/domain/repositories/firebase.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseManagement implements AbstractFirebase {
  @override
  Future<FirebaseApp> initFirebase() {
    return Firebase.initializeApp();
  }
}
