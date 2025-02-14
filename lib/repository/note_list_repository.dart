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
import 'package:basic_notes/model/note_list.dart';
import 'package:injectable/injectable.dart';

import '../injection.dart';
import 'app_dir_repository.dart';

const String fileName = 'note-list.json';

@lazySingleton
class NoteListRepository {

  Future<void> save(NoteList noteList) async {
    AppDirRepository appDirRepository = getIt<AppDirRepository>();
    final Map<String, dynamic> noteListJson = noteList.toJson();
    final String noteListJsonString = jsonEncode(noteListJson);
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$fileName');
    await file.writeAsString(noteListJsonString);
  }

  Future<NoteList> load() async {
    AppDirRepository appDirRepository = getIt<AppDirRepository>();
    File file = File('${appDirRepository.applicationDirectory().path}${Platform.pathSeparator}$fileName');
    final String noteListJsonString = await file.readAsString();
    final Map<String, dynamic> noteListJson = jsonDecode(noteListJsonString);
    return NoteList.fromJson(noteListJson);
  }

}