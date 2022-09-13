import 'dart:io';


import 'package:flutter/material.dart';

import '../model/api_response.dart';
import '../prefs/prefs.dart';



mixin ApiHelper{
  ProcessResponse get errorResponse => ProcessResponse(message: 'Something went wrong',success: false);

/*
  Map<String ,String> get headers => {

    HttpHeaders.acceptHeader: 'application/json',
    HttpHeaders.authorizationHeader  :  SharedPrefController().getValueFor<String>(PrefKeys.token.name)!,
};*/
}
mixin ApiHelper2 {
  void showSnackBar(BuildContext context,
      {required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
        duration: const Duration(seconds: 1),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }

 /* Map<String, String> get headers {
    var headers = {
      'Accept': 'application/json',
      //'lang': SharedPreferencesController().checkLanguage
    };
    if (SharedPrefController().getValueFor(PrefKeys.loggedIn.name) ??  false) {
      headers[HttpHeaders.authorizationHeader] = SharedPrefController().getValueFor(PrefKeys.token.name)!;
      headers[HttpHeaders.acceptHeader] = 'application/json';
    }
    return headers;

  }*/
}