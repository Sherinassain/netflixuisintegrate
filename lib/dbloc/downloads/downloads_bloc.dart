import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixuis/Downloads/model/download_repo.dart';

import '../../Downloads/failures/mainfailures.dart';
import '../../Downloads/model/downloadsmodel.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<Downloadsevent, Downloadstate> {
  final downloadrepo _downloadsrepo;
  DownloadsBloc(this._downloadsrepo) : super(Downloadstate.intial()) {
    on<_GetDownloadimage>((event, emit) async {
      emit(state.copyWith(isloading: true, downloadsucessorfailure: none()));
      final Either<Mainfailures, List<Downloadmodel>> downloadoption =
          await _downloadsrepo.getDownloadimage();
      log(downloadoption.toString());
      emit(downloadoption.fold(
          (failure) => state.copyWith(
              isloading: false, downloadsucessorfailure: some(Left(failure))),
          (success) => state.copyWith(
              isloading: false,
              downloads: success,
              downloadsucessorfailure: some(Right(success)))));
    });
  }
}
