import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixuis/Downloads/model/download_repo.dart';
import 'package:netflixuis/Search/searchbloc/search_bloc.dart';
import 'package:netflixuis/dbloc/downloads/downloads_bloc.dart';

import '../../Downloads/model/downloadsmodel.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyvideourls = [
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
];
ValueNotifier<Set<int>> likedvideosidNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  downloadrepo _downloadservice;
  FastLaughBloc(this._downloadservice) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //trending movies get
      emit(FastLaughState(
        videoslist: [],
        isloading: true,
        iserror: false,
      ));

      final _result = await _downloadservice.getDownloadimage();
      final _state = _result.fold((l) {
        return FastLaughState(
          videoslist: [],
          isloading: false,
          iserror: true,
        );
      },
          (resp) => FastLaughState(
                videoslist: resp,
                isloading: false,
                iserror: false,
              ));
      //send to ui
      emit(_state);
    });
    on<Likedvideo>((event, emit) async {
      likedvideosidNotifier.value.add(event.id);
      likedvideosidNotifier.notifyListeners();
    });
    on<Unlikedvideo>((event, emit) async {
      likedvideosidNotifier.value.remove(event.id);
      likedvideosidNotifier.notifyListeners();
    });
  }
}
