import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflixuis/Search/model/iSearch_repo.dart';
import 'package:netflixuis/Search/model/searchresponse/searchresponse.dart';
import 'package:netflixuis/infrastracture/api_end_points.dart';
@LazySingleton(as: Searchrepo)
class searchrepository implements Searchrepo{
  @override
  Future<Either<Mainfailures, Searchresponse>> searchmovies({required String moviequery}) async {
  try {
      final Response response =
          await Dio(BaseOptions()).get(apiendpoints.search,queryParameters:{
            'query' : moviequery,
          } );
      if (response.statusCode == 200 || response.statusCode == 201) {
final result =  Searchresponse.fromJson(response.data);

      
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