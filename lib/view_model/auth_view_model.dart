import 'package:api_with_mvvm_asif_taj/repository/auth_repository.dart';
import 'package:flutter/material.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepository = AuthRepository();
  bool _loading = false;

  get loading => _loading;

  setLoading(bool val) {
    _loading = val;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data) async {
    setLoading(true);
    _myRepository.loginApi(data).then(
      (value) {
        setLoading(false);
      },
    ).onError(
      (error, stackTrace) {
        setLoading(false);
      },
    );
  }

  Future<void> signupApi(dynamic data) async {
    setLoading(true);
    _myRepository.signupApi(data).then(
          (value) {
        setLoading(false);
      },
    ).onError(
          (error, stackTrace) {
        setLoading(false);
      },
    );
  }
}
