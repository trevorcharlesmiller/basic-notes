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
import 'package:basic_notes/repository/note_repository.dart';
import 'package:injectable/injectable.dart';

import '../locator.dart';
import 'app_dir_repository.dart';

@lazySingleton
class FileNoteRepository implements NoteRepository {
  @override
  Future<String> loadNote(String id) async {
    AppDirRepository appDirRepository = Locator.getAppDirRepository();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$id');
    return await file.readAsString();
  }

  @override
  Future<void> saveNote(String id, String contents) async {
    AppDirRepository appDirRepository = Locator.getAppDirRepository();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$id');
    await file.writeAsString(contents);
  }

  @override
  Future<void> deleteNote(String id) async {
    AppDirRepository appDirRepository = Locator.getAppDirRepository();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$id');
    await file.delete();
  }
}