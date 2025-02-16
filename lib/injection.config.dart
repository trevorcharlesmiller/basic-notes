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

import 'repository/file/app_dir_repository.dart' as _i734;
import 'repository/file/file_note_list_repository.dart' as _i485;
import 'repository/file/file_note_repository.dart' as _i830;
import 'service/note_list_service.dart' as _i159;
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
    gh.lazySingleton<_i634.NoteService>(() => _i634.NoteService());
    gh.lazySingleton<_i830.FileNoteRepository>(
        () => _i830.FileNoteRepository());
    gh.lazySingleton<_i734.AppDirRepository>(() => _i734.AppDirRepository());
    gh.lazySingleton<_i485.FileNoteListRepository>(
        () => _i485.FileNoteListRepository());
    gh.lazySingleton<_i159.NoteListService>(() => _i159.NoteListService());
    return this;
  }
}
