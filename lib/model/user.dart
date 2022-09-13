class User {
  late int id;

  late String name;

  late String email;
  late String password;

  User();

  static const String tableName = 'users';
  // Read Data from database table
  User.fromMap(Map<String, dynamic> rowMap){
    id = rowMap['id'];
    name = rowMap['name'];
    email = rowMap['email'];
  }

  // Prepare map to be saves in database
  Map <String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
   /// ممنوع ادخال ال id  لانه داينمككك
    /// map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    return map;
  }

}