// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../dbloc/downloads/downloads_bloc.dart' as _i9;
import '../../Downloads/model/download_repo.dart' as _i7;
import '../../fastlaugh/fastlaugh/fast_laugh_bloc.dart' as _i10;
import '../../infrastracture/downloadapi_repository.dart' as _i8;
import '../../newhot/hotandnewbloc/hotandnew_bloc.dart' as _i11;
import '../../newhot/model/hot_and_new_repository.dart' as _i4;
import '../../newhot/model/new_and_hot_repo.dart' as _i3;
import '../../Search/model/iSearch_repo.dart' as _i5;
import '../../Search/model/Search_repository.dart' as _i6;
import '../../Search/searchbloc/search_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.Hotandnewrepo>(() => _i4.Hotandnewrepository());
  gh.lazySingleton<_i5.Searchrepo>(() => _i6.searchrepository());
  gh.lazySingleton<_i7.downloadrepo>(() => _i8.Downloadrepository());
  gh.factory<_i9.DownloadsBloc>(
      () => _i9.DownloadsBloc(get<_i7.downloadrepo>()));
  gh.factory<_i10.FastLaughBloc>(
      () => _i10.FastLaughBloc(get<_i7.downloadrepo>()));
  gh.factory<_i11.HotandnewBloc>(
      () => _i11.HotandnewBloc(get<_i3.Hotandnewrepo>()));
  gh.factory<_i12.SearchBloc>(() => _i12.SearchBloc(
        get<_i7.downloadrepo>(),
        get<_i5.Searchrepo>(),
      ));
  return get;
}
