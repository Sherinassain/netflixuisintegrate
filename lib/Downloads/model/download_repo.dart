import 'package:dartz/dartz.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:netflixuis/Downloads/model/downloadsmodel.dart';

abstract class downloadrepo {
  Future<Either<Mainfailures, List<Downloadmodel>>> getDownloadimage();
}
