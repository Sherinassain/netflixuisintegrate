part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateid,
    required List<HotAndnewData> pastyearmovielist,
    required List<HotAndnewData> trendingmovielist,
    required List<HotAndnewData> tenseDreamsmovielist,
    required List<HotAndnewData> southindianmovielist,
    required List<HotAndnewData> trendingtvlist,
    required bool isloading,
    required bool iserror,
  }) = _Initial;
  factory HomeState.initial() => const HomeState(
    stateid: '0',
      pastyearmovielist: [],
      trendingmovielist: [],
      tenseDreamsmovielist: [],
      southindianmovielist: [],
      trendingtvlist: [],
      isloading: false,
      iserror: false);
}
