part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<HotAndnewData> commingsoonlist,
    required List<HotAndnewData> everyoneswatchinglist,
    required bool isloading,
        required bool iserror,

  }) = _Initial;
 factory HotandnewState.initial() => const
      HotandnewState(commingsoonlist: [], everyoneswatchinglist: [],isloading: false,iserror: false);
}
