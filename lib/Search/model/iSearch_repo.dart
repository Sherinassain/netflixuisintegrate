import 'package:dartz/dartz.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:netflixuis/Search/model/searchresponse/searchresponse.dart';

abstract class Searchrepo {
  Future<Either<Mainfailures, Searchresponse>> searchmovies({
    required String moviequery,
  });
}
