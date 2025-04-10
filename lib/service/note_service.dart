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
import 'package:basic_notes/repository/storage_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import '../model/note.dart';
import '../repository/locator.dart';
import '../repository/note_repository.dart';

const String noteIdKey = 'NOTE_ID';
const String noteId = 'f1924716-a62b-474e-9afe-d5098f129cd0';

@lazySingleton
class NoteService {

  Future<Note> loadNote() async {
    NoteRepository repository = Locator.getNoteRepository();
    Note? note = await repository.loadNote(noteId);
    if(note == null) {
      note = Note(id: noteId, content: '');
      await repository.saveNote(note);
    }
    return note;
  }

  Future<void> saveNote(Note note) async {
    NoteRepository repository = Locator.getNoteRepository();
    return await repository.saveNote(note);
  }

  Future<void> deleteNote() async {
    NoteRepository repository = Locator.getNoteRepository();
    await repository.deleteNote(noteId);
  }
}