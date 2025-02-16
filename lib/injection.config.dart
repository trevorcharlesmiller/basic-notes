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
import 'repository/file_note_repository.dart' as _i470;
import 'repository/note_list_repository.dart' as _i461;
import 'service/note_service.dart' as _i634;

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
    gh.lazySingleton<_i461.NoteListRepository>(
        () => _i461.NoteListRepository());
    gh.lazySingleton<_i634.NoteService>(() => _i634.NoteService());
    gh.lazySingleton<_i470.FileNoteRepository>(
        () => _i470.FileNoteRepository());
    return this;
  }
}
