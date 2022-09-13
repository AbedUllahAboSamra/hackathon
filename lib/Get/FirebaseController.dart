import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hackathon_project/model/UserModle.dart';

class FirebaseController extends GetxController {

  static FirebaseController get to => Get.find();
  var stateLogin = "";
  var stateCreateAccount = "";

  var userModel =  UserModle();

  void methodLogin({
    required String email,
    required String password,
  }) {
    stateLogin = "loading";
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password).
    then((user) {
      print('asd');
      stateLogin = "logged";
      FirebaseFirestore.instance.collection('users')
      .doc(user.user!.uid)
          .get()
          .then((value) {
        userModel = UserModle.fromJson(value.data()!) ;


         }).catchError((onError){});


    }).catchError((onError) {
      stateLogin = "error";
    });
  }


  void methodCreateAccount({
    required UserModle userModle
  }) {
    print(userModle);
    stateCreateAccount = "loading";
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userModle.email, password: userModle.password)
        .then((user) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(user.user!.uid)
          .set(UserModle.toMap(userModle))
          .then((value) {
             stateCreateAccount = "Created";

          }
          );
  }

  );

}
}