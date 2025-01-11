import 'package:flutter/material.dart';

import '../repository/auth_repository.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepository = AuthRepository();

  bool _loginLoading = false;

  get loginLoading => _loginLoading;

  bool _signupLoading = false;

  get signupLoading => _signupLoading;

  setLoginLoading(bool val) {
    _loginLoading = val;
    notifyListeners();
  }

  setSignupLoading(bool val) {
    _signupLoading = val;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data) async {
    setLoginLoading(true);
    _myRepository.loginApi(data).then(
      (value) {
        setLoginLoading(false);
      },
    ).onError(
      (error, stackTrace) {
        setLoginLoading(false);
      },
    );
  }

  Future<void> signupApi(dynamic data) async {
    setSignupLoading(true);
    _myRepository.signupApi(data).then(
      (value) {
        setSignupLoading(false);
      },
    ).onError(
      (error, stackTrace) {
        setSignupLoading(false);
      },
    );
  }
}
