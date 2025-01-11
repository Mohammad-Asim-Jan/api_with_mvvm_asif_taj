
import 'package:api_with_mvvm_asif_taj/model/user_model.dart';
import 'package:api_with_mvvm_asif_taj/view_model/user_view_model.dart';
import 'package:flutter/cupertino.dart';

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