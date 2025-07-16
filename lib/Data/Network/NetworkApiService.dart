// lib/Data/Network/NetworkApiService.dart

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../AppExceptions.dart';
import 'BaseApiServices.dart';

class NetworkApiService extends BaseApiServices {

  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      final response = await http.post(
        Uri.parse(url),
        // Humne header ko thora saaf kiya hai
        headers: {
          'Content-Type': 'application/json',
          'x-api-key' : 'reqres-free-v1',

      },
        body: jsonEncode(data),
      ).timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200: // Success
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400: // Bad Request
        throw BadRequestException(response.body.toString());
    // Humne 404 Not Found ko aek alag case bana diya hai
      case 404:
        throw BadRequestException('404: URL not found');
      case 401: // Unauthorized
      case 403: // Forbidden
        throw UnauthorisedException(response.body.toString());
      default: // Other errors
        throw FetchDataException(
            'Error occurred with status code: ${response.statusCode}');
    }
  }
}