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
import 'package:injectable/injectable.dart';
import '../injection.dart';
import '../repository/note_repository.dart';

@lazySingleton
class NoteService {
  Future<String> loadNote(String id) async {
    NoteRepository repository = getIt<NoteRepository>();
    return await repository.loadNote(id);
  }

  Future<void> saveNote(String id, String contents) async {
    NoteRepository repository = getIt<NoteRepository>();
    return await repository.saveNote(id, contents);
  }

  Future<void> deleteNote(String id) async {
    NoteRepository repository = getIt<NoteRepository>();
    await repository.deleteNote(id);
  }
}