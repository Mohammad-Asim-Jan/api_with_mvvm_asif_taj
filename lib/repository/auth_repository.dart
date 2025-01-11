
import '../data/network/base_api_services.dart';
import '../data/network/network_api_services.dart';
import '../resource/app_urls.dart';

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
