part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchresultData> searchresultlist,
    required List<Downloadmodel> idlelist,
    required bool isloading,
    required bool iserror,
  }) = _SearchState;
  factory SearchState.initial() {
    return SearchState(
        searchresultlist: [], idlelist: [], isloading: false, iserror: false);
  }
}
