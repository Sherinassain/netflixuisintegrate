part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initilize() = Initilize;
  const factory SearchEvent.searchmovie({
    required String moviequery,
  }) = Searchmovie;
}
