import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixuis/infrastracture/api_end_points.dart';
import 'package:netflixuis/newhot/hotandnewresponse/hotandnewresponse.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflixuis/newhot/model/new_and_hot_repo.dart';
@LazySingleton(as: Hotandnewrepo)
class Hotandnewrepository implements Hotandnewrepo {
  @override
  Future<Either<Mainfailures, Hotandnewresponse>>
      get6HotandNewMovieData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        apiendpoints.hotandnewmovie,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Hotandnewresponse.fromJson(response.data);

        return Right(result);
      } else {
        return Left(Mainfailures.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return Left(Mainfailures.clientfailure());
    }
  }
  @override
Future<Either<Mainfailures, Hotandnewresponse>> get6HotandNewtvData() async {
 try {
      final Response response = await Dio(BaseOptions()).get(
        apiendpoints.hotandnewtv,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Hotandnewresponse.fromJson(response.data);

        return Right(result);
      } else {
        return Left(Mainfailures.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return Left(Mainfailures.clientfailure());
    }
}

}

