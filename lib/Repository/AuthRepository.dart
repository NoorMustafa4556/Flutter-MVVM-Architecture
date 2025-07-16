// lib/Repository/AuthRepository.dart

import '../Data/Network/BaseApiServices.dart';
import '../Data/Network/NetworkApiService.dart';
import '../Resources/AppUrls.dart';

class AuthRepository {

  // Using BaseApiServices for abstraction, NetworkApiService is the implementation
  final BaseApiServices _apiServices = NetworkApiService();

  // Login API Call
  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(AppUrls.loginEndpoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  // Register API Call (Example)
  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(AppUrls.registerApiEndpoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

}