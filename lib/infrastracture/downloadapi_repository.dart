import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflixuis/Downloads/model/download_repo.dart';
import 'package:netflixuis/Downloads/model/downloadsmodel.dart';
import 'package:netflixuis/infrastracture/api_end_points.dart';

@LazySingleton(as: downloadrepo)
class Downloadrepository implements downloadrepo {
  @override
  Future<Either<Mainfailures, List<Downloadmodel>>> getDownloadimage() async {
    // TODO: implement getDownloadimage
    try {
      final Response response =
          await Dio(BaseOptions()).get(apiendpoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloadmodel.fromJson(e);
        }).toList();

        print(downloadsList);
        return Right(downloadsList);
      } else {
        return Left(Mainfailures.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return Left(Mainfailures.clientfailure());
    }
  }
}
