import 'package:dartz/dartz.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:netflixuis/newhot/hotandnewresponse/hotandnewresponse.dart';

abstract class Hotandnewrepo {
  Future<Either<Mainfailures, Hotandnewresponse>> get6HotandNewMovieData();
    Future<Either<Mainfailures, Hotandnewresponse>> get6HotandNewtvData();
}
