
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FireStore {
  FirebaseFirestore fbStore = FirebaseFirestore.instance;





  Stream<QuerySnapshot> read() async* {
  yield*  fbStore.collection('test').snapshots();
  }
  
  Future<void> delete(String path) async {
   await fbStore.collection('test').doc(path).delete();
  }
}
