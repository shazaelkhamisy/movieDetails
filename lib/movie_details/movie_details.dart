import 'package:flutter/material.dart';
import 'package:movie/movie_details/movie_details_cubit.dart';
import 'package:movie/movie_details/movie_details_model.dart';


class MovieDetailsScreen extends StatelessWidget {
  final int id;

  MovieDetailsScreen({Key? key, required this.id}) : super(key: key);

  final controller = MovieDetailsCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: FutureBuilder(
          future: controller.getData(id: id),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const CircularProgressIndicator();
            }
            var model = snapshot.data as MovieDetailsModel;
            return Column(
              children: [
                Image.network("https://image.tmdb.org/t/p/original${model.posterPath}"),
                Text(model.overview)
              ],
            );
          },
        ),
      ),
    );
  }
}