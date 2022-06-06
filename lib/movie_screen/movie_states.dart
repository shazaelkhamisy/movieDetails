abstract class MovieStates {}

class MovieInitState extends MovieStates{}
class MovieLoadingState extends MovieStates{}
class MovieGetSuccessState extends MovieStates{}
class MovieGetErrorState extends MovieStates{
  final String error;

  MovieGetErrorState(this.error);

}

class MovieGetActionErrorState extends MovieStates{
  final String error;

  MovieGetActionErrorState(this.error);

}

class MovieChangeDropDown extends MovieStates{}