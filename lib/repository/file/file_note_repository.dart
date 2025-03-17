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
import 'dart:convert';
import 'dart:io';
import 'package:basic_notes/repository/note_repository.dart';
import 'package:injectable/injectable.dart';

import '../../model/note.dart';
import '../locator.dart';
import 'app_dir_repository.dart';

@lazySingleton
class FileNoteRepository implements NoteRepository {
  @override
  Future<Note?> loadNote(String id) async {
    AppDirRepository appDirRepository = Locator.getAppDirRepository();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$id');
    bool fileExists = await file.exists();
    if(fileExists) {
      final String noteJsonString = await file.readAsString();
      final Map<String, dynamic> noteJson = jsonDecode(noteJsonString);
      return Note.fromJson(noteJson);
    } else {
      return null;
    }
  }

  @override
  Future<void> saveNote(Note note) async {
    AppDirRepository appDirRepository = Locator.getAppDirRepository();
    final Map<String, dynamic> noteJson = note.toJson();
    final String noteJsonString = jsonEncode(noteJson);
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}${note.id}');
    await file.writeAsString(noteJsonString);
  }

  @override
  Future<void> deleteNote(String id) async {
    AppDirRepository appDirRepository = Locator.getAppDirRepository();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$id');
    await file.delete();
  }
}