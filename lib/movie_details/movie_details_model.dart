class MovieDetailsModel {

  late final bool adult;
  late final String backdropPath;
  late final BelongsToCollection belongsToCollection;
  late final int budget;
  late final List<Genres> genres;
  late final String homepage;
  late final int id;
  late final String imdbId;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final double popularity;
  late final String posterPath;
  late final List<ProductionCompanies> productionCompanies;
  late final List<ProductionCountries> productionCountries;
  late final String releaseDate;
  late final int revenue;
  late final int runtime;
  late final List<SpokenLanguages> spokenLanguages;
  late final String status;
  late final String tagline;
  late final String title;
  late final bool video;
  late final double voteAverage;
  late final int voteCount;

  MovieDetailsModel.fromJson(Map<String, dynamic> json){
    overview = json['overview'];
    posterPath = json['poster_path'];
    title = json['title'];
  }

}

class BelongsToCollection {

  late final int id;
  late final String name;
  late final String posterPath;
  late final String backdropPath;

  BelongsToCollection.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
  }

}

class Genres {

  late final int id;
  late final String name;

  Genres.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
}

class ProductionCompanies {

  late final int id;
  late final String? logoPath;
  late final String name;
  late final String originCountry;

  ProductionCompanies.fromJson(Map<String, dynamic> json){
    id = json['id'];
    logoPath = null;
    name = json['name'];
    originCountry = json['origin_country'];
  }

}

class ProductionCountries {
  late final String iso_3166_1;
  late final String name;

  ProductionCountries.fromJson(Map<String, dynamic> json){
    iso_3166_1 = json['iso_3166_1'];
    name = json['name'];
  }

}

class SpokenLanguages {

  late final String englishName;
  late final String iso_639_1;
  late final String name;

  SpokenLanguages.fromJson(Map<String, dynamic> json){
    englishName = json['english_name'];
    iso_639_1 = json['iso_639_1'];
    name = json['name'];
  }

}