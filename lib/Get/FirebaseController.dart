import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hackathon_project/model/UserModle.dart';

class FirebaseController extends GetxController {
  static FirebaseController get to => Get.find();

  var stateCreateAccount = "";

  var userModel = UserModle();

  Future<bool> methodLogin({
    required String email,
    required String password,
  }) async {

    try {
      var crid = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      var user =  await FirebaseFirestore.instance.collection('users').doc(crid.user!.uid).get();
      userModel = UserModle.fromJson(user.data()!);
      return true;
    } catch (ex) {
      print(ex.toString());
      return false;
    }
  }

  Future<bool> methodCreateAccount({required UserModle userModle}) async{

  try{
    var crid = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: userModle.email, password: userModle.password);
    var user =  await FirebaseFirestore.instance
        .collection('users')
        .doc(crid.user!.uid)
        .set(UserModle.toMap(userModle));
  this.userModel = userModle;
  return true;
  }catch (ex){
    return false;
  }


  }
}
