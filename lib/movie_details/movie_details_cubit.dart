import 'package:dio/dio.dart';
import 'package:movie/movie_details/movie_details_model.dart';


class MovieDetailsCubit {
  Future<MovieDetailsModel> getData({required int id}) async {
    var response = await Dio().get(
        "https://api.themoviedb.org/3/movie/$id?api_key=2001486a0f63e9e4ef9c4da157ef37cd");
    var model = MovieDetailsModel.fromJson(response.data);
    return model;
  }
}