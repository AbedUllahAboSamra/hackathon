import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackathon_project/helper/context_extenssion.dart';

class FirebseAuth  {
  FirebaseAuth fbAuth = FirebaseAuth.instance;

  Future<bool> createNewAccount(BuildContext context,
      {required String email, required String password}) async {
    try {





      UserCredential credential = await fbAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      _controlError(context, e);
      return false;
    } catch (error) {}
    return false;
  }

  Future<bool> login(BuildContext context,
      {required String email, required String password}) async {
    try {
      UserCredential credential = await fbAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      _controlError(context, e);
      return false;
    } catch (error) {}
    return false;
  }

  _controlError(BuildContext context, FirebaseAuthException e) {
    // showSnackBar(context: context, content: e.message!, error: true);
    switch (e.message) {
      case 'email-already-in-use':
        // context.showSnackBar( message: '',error: false);
        break;
      case 'invalid-email':
        break;
      case 'operation-not-allowed':
        break;
      case 'weak-password':
        break;
    }
  }

  User get user => fbAuth.currentUser!;

  bool get isLogged => fbAuth.currentUser != null;

  Future<void> logout() async {
    fbAuth.signOut();
  }
}
