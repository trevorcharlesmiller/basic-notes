// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'repository/app_dir_repository.dart' as _i0;
import 'repository/note_list_repository.dart' as _i461;
import 'repository/note_repository.dart' as _i348;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i0.AppDirRepository>(() => _i0.AppDirRepository());
    gh.lazySingleton<_i348.NoteRepository>(() => _i348.NoteRepository());
    gh.lazySingleton<_i461.NoteListRepository>(
        () => _i461.NoteListRepository());
    return this;
  }
}
