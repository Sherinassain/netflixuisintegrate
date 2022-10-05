import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:netflixuis/Downloads/model/download_repo.dart';

import 'package:netflixuis/Search/model/iSearch_repo.dart';

import '../../Downloads/model/downloadsmodel.dart';
import '../model/searchresponse/searchresponse.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final downloadrepo _downloadsrepo;
  final Searchrepo _searchesrepo;
  SearchBloc(this._downloadsrepo, this._searchesrepo)
      : super(SearchState.initial()) {
    on<Initilize>((event, emit) async {
      //get trending

      if (state.idlelist.isNotEmpty) {
        emit(state);
        return;
      }
      emit(SearchState(
          searchresultlist: [], idlelist: [], isloading: true, iserror: false));
      final _results = await _downloadsrepo.getDownloadimage();
      final _state = _results.fold((Mainfailures f) {
        return SearchState(
            searchresultlist: [],
            idlelist: [],
            isloading: false,
            iserror: true);
      }, (List<Downloadmodel> list) {
        return SearchState(
            searchresultlist: [],
            idlelist: list,
            isloading: false,
            iserror: false);
      });

      //show it ui
      emit(_state);
    });
    on<Searchmovie>((event, emit) async {
      //call search movie api
      final _result =
          await _searchesrepo.searchmovies(moviequery: event.moviequery);
      emit(SearchState(
          searchresultlist: [], idlelist: [], isloading: true, iserror: false));
      //show to ui
      final _searchresults = _result.fold((Mainfailures f) {
        return SearchState(
            searchresultlist: [],
            idlelist: [],
            isloading: false,
            iserror: true);
      }, (searchsucess) {
        return SearchState(
            searchresultlist: searchsucess.results,
            idlelist: [],
            isloading: false,
            iserror: false);
      });
      emit(_searchresults);
    });
  }
}
