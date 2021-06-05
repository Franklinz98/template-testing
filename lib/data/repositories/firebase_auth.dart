import 'package:f_social_network/domain/repositories/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireAuth implements AbstractFirebaseAuth {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Stream<User?> get user => auth.authStateChanges();

  @override
  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: "barry.allen@example.com", password: "SuperSecretPassword!");
      return "Success";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return e.message!;
    }
  }

  @override
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Future<String> signUp(
      {required String name,
      required String email,
      required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: "barry.allen@example.com", password: "SuperSecretPassword!");
      return "Success";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "The password provided is too weak.";
      } else if (e.code == 'email-already-in-use') {
        return "The account already exists for that email.";
      }
      return e.message!;
    } catch (e) {
      rethrow;
    }
  }
}
