import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:netflixuis/newhot/model/new_and_hot_repo.dart';

import '../hotandnewresponse/hotandnewresponse.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final Hotandnewrepo _hotandnewrepo;
  HotandnewBloc(this._hotandnewrepo) : super(HotandnewState.initial()) {
    //1st event
    on<Loaddataincommingsoon>((event, emit) async {
      emit(HotandnewState(
          commingsoonlist: [],
          everyoneswatchinglist: [],
          isloading: true,
          iserror: false));
      final _result = await _hotandnewrepo.get6HotandNewMovieData();
      final _state = _result.fold((Mainfailures failures) {
        return HotandnewState(
            commingsoonlist: [],
            everyoneswatchinglist: [],
            isloading: false,
            iserror: true);
      }, (Hotandnewresponse resp) {
        return HotandnewState(
            commingsoonlist: resp.results,
            everyoneswatchinglist: state.everyoneswatchinglist,
            isloading: false,
            iserror: false);
      });
      emit(_state);
    });
    // 2nd event
    on<Loaddataineveryoneiswatching>((event, emit) async{
          emit(HotandnewState(
          commingsoonlist: [],
          everyoneswatchinglist: [],
          isloading: true,
          iserror: false));
      final _result = await _hotandnewrepo.get6HotandNewtvData();
      final _state = _result.fold((Mainfailures failures) {
        return HotandnewState(
            commingsoonlist: [],
            everyoneswatchinglist: [],
            isloading: false,
            iserror: true);
      }, (Hotandnewresponse resp) {
        return HotandnewState(
            commingsoonlist: state.commingsoonlist,
            everyoneswatchinglist:resp.results,
            isloading: false,
            iserror: false);
      });
      emit(_state);
    });
  }
}
