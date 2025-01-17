import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../app_exceptions.dart';
import 'base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));

      jsonResponse = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }

    return jsonResponse;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic jsonResponse;
    try {
      http.Response response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));

      jsonResponse = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }

    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error while communicating with server with status code ${response.statusCode}');
    }
  }
}
