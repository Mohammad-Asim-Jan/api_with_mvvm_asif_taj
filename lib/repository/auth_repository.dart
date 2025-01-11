import 'package:api_with_mvvm_asif_taj/data/network/base_api_services.dart';
import 'package:api_with_mvvm_asif_taj/data/network/network_api_services.dart';
import 'package:api_with_mvvm_asif_taj/resource/app_urls.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiServices();

  Future loginApi(dynamic data) async {
    try {
      dynamic response =
          _apiServices.getPostApiResponse(AppUrls.loginEndPoint, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future signupApi(dynamic data) async {
    try {
      dynamic response =
          _apiServices.getPostApiResponse(AppUrls.signupEndPoint, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
