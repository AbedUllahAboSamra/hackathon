import 'package:sqflite/sqflite.dart';

import '../../model/api_response.dart';
import '../../model/user.dart';
import '../../prefs/prefs.dart';
import '../db_controller.dart';

class UserDbController {
  // Login , register

  final Database _database = DbController().database;

/*  void login({required String email, required String password}) async {
    List <Map<String, dynamic>> rowsMap = await  _database.query(
        User.tableName, where: 'email = ? AND password = ?',
        whereArgs: [email, password]);
    if(rowsMap.isNotEmpty){
      User user =User.fromMap(rowsMap.first);
      SharedPrefController().save(user: user);
    }
  }*/
  Future<ProcessResponse> login({required String email, required String password}) async {
    List <Map<String, dynamic>> rowsMap = await  _database.query(
        User.tableName, where: 'email = ? AND password = ?',
        whereArgs: [email, password]);
    if(rowsMap.isNotEmpty){
      User user =User.fromMap(rowsMap.first);
      SharedPrefController().save(user: user);
      return ProcessResponse(message: 'Login Successfully', success: true);
    }
    return ProcessResponse(message: 'Credentials error , check and try again !',success: false );
  }

/*  void register({required User user}) async{
   int newRowId = await _database.rawInsert(
        'INSERT INTO users (name , email ,password) VALUES (? ,? ,?)',
        [user.name, user.email, user.password]);
  } */
  Future<ProcessResponse> register({required User user}) async {
    if (await _isEmailExist(email: user.email)) {
      int newRowId = await _database.insert(User.tableName, user.toMap());
      return ProcessResponse(message: newRowId != 0
          ? 'Registered successfully  '
          : 'Register failed!', success: newRowId != 0);
    } else {
      return ProcessResponse(
          message: 'Email exist , use  another', success: false);
    }
  }

  Future<bool> _isEmailExist({required String email}) async {
    List<Map<String, dynamic>> rowsMap = await _database.rawQuery(
        'SELECT * FROM users WHERE email = ?', [email]);
    return rowsMap.isEmpty;
  }

}
