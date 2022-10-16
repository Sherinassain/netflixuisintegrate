// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../dbloc/downloads/downloads_bloc.dart' as _i7;
import '../../Downloads/model/download_repo.dart' as _i5;
import '../../fastlaugh/fastlaugh/fast_laugh_bloc.dart' as _i8;
import '../../infrastracture/downloadapi_repository.dart' as _i6;
import '../../Search/model/iSearch_repo.dart' as _i3;
import '../../Search/model/Search_repository.dart' as _i4;
import '../../Search/searchbloc/search_bloc.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.Searchrepo>(() => _i4.searchrepository());
  gh.lazySingleton<_i5.downloadrepo>(() => _i6.Downloadrepository());
  gh.factory<_i7.DownloadsBloc>(
      () => _i7.DownloadsBloc(get<_i5.downloadrepo>()));
  gh.factory<_i8.FastLaughBloc>(
      () => _i8.FastLaughBloc(get<_i5.downloadrepo>()));
  gh.factory<_i9.SearchBloc>(() => _i9.SearchBloc(
        get<_i5.downloadrepo>(),
        get<_i3.Searchrepo>(),
      ));
  return get;
}
