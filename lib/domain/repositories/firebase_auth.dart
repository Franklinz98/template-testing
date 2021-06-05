import 'package:firebase_auth/firebase_auth.dart';

abstract class AbstractFirebaseAuth {

  Stream<User?> get user;

  Future<String> signUp(
      {required String name, required String email, required String password});

  Future<String> signIn({required String email, required String password});

  Future<void> signOut();
}
