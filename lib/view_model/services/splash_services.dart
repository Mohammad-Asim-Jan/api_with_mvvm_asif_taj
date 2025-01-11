
import 'package:flutter/material.dart';

import '../../model/user_model.dart';
import '../user_view_model.dart';

class SplashServices {

  Future<UserModel> getUserData() => UserViewModel().getUser();

  void checkAuthentication (BuildContext ctx) {
    getUserData().then((value) {

      if(value.token == null || value.token == ''){
        // goto login view
      } else {
        // goto home view
      }

    },).onError((error, stackTrace) {

    },);
  }

}