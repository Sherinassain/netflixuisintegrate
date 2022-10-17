import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixuis/Downloads/failures/mainfailures.dart';
import 'package:netflixuis/newhot/model/new_and_hot_repo.dart';

import '../../newhot/hotandnewresponse/hotandnewresponse.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Hotandnewrepo _homeservice;
  HomeBloc(this._homeservice) : super(HomeState.initial()) {
    on<GetHomescreendata>((event, emit) async {
      emit(state.copyWith(isloading: true, iserror: false));
      final _movieresult = await _homeservice.get6HotandNewMovieData();
      final _tvresult = await _homeservice.get6HotandNewtvData();
      final _state1 = _movieresult.fold((Mainfailures failure) {
        return HomeState(
          stateid: DateTime.now().millisecondsSinceEpoch.toString(),
            pastyearmovielist: [],
            trendingmovielist: [],
            tenseDreamsmovielist: [],
            southindianmovielist: [],
            trendingtvlist: [],
            isloading: false,
            iserror: true);
      }, (Hotandnewresponse resp) {
        final pastyear = resp.results;
        final trending = resp.results;
        final dramas = resp.results;
        final southindian = resp.results;
        pastyear.shuffle();
        trending.shuffle();
        dramas.shuffle();
        southindian.shuffle();
        HomeState(
           stateid: DateTime.now().millisecondsSinceEpoch.toString(),
            pastyearmovielist: pastyear,
            trendingmovielist: trending,
            tenseDreamsmovielist: dramas,
            southindianmovielist: southindian,
            trendingtvlist: state.trendingtvlist,
            isloading: false,
            iserror: false);
      });
      emit(_state1!);
      final _state2 = _tvresult.fold((Mainfailures failure) {
        return HomeState(
           stateid: DateTime.now().millisecondsSinceEpoch.toString(),
            pastyearmovielist: [],
            trendingmovielist: [],
            tenseDreamsmovielist: [],
            southindianmovielist: [],
            trendingtvlist: [],
            isloading: false,
            iserror: true);
      }, (Hotandnewresponse resp) {
        final top10List = resp.results;
        return HomeState(
           stateid: DateTime.now().millisecondsSinceEpoch.toString(),
            pastyearmovielist: state.pastyearmovielist,
            trendingmovielist: top10List,
            tenseDreamsmovielist: state.tenseDreamsmovielist,
            southindianmovielist: state.southindianmovielist,
            trendingtvlist: state.trendingtvlist,
            isloading: false,
            iserror: false);
      });
      emit(_state2);
    });
  }
}
