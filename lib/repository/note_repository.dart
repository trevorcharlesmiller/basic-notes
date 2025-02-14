// This source code is copyright ot Trevor Miller.
// Trevor Miller licenses this file to You under the MIT License (the
// "License"); you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://github.com/trevorcharlesmiller/basic-notes/blob/main/LICENSE
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
import 'dart:io';
import 'package:injectable/injectable.dart';

import '../injection.dart';
import 'app_dir_repository.dart';

@lazySingleton
class NoteRepository {
  Future<String> loadNote(String id) async {
    AppDirRepository appDirRepository = getIt<AppDirRepository>();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$id');
    return await file.readAsString();
  }

  Future<void> saveNote(String id, String contents) async {
    AppDirRepository appDirRepository = getIt<AppDirRepository>();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$id');
    await file.writeAsString(contents);
  }

  Future<void> deleteNote(String id) async {
    AppDirRepository appDirRepository = getIt<AppDirRepository>();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$id');
    await file.delete();
  }
}