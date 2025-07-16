

import '../Data/Network/BaseApiServices.dart';
import '../Data/Network/NetworkApiService.dart';
import '../Model/MoviesModel.dart';
import '../Resources/AppUrls.dart';

class HomeRepository {

  final BaseApiServices _apiServices = NetworkApiService();

  Future<MovieListModel> fetchMoviesList() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(AppUrls.moviesListEndPoint);
      return MovieListModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}