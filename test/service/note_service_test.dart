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

import 'package:basic_notes/injection.dart';
import 'package:basic_notes/model/note.dart';
import 'package:basic_notes/repository/file/file_note_repository.dart';
import 'package:basic_notes/repository/secure/secure_storage_repository.dart';
import 'package:basic_notes/service/note_service.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'note_service_test.mocks.dart';

@GenerateMocks([FileNoteRepository, SecureStorageRepository])
void main() {
  FileNoteRepository noteRepository = MockFileNoteRepository();
  SecureStorageRepository storageRepository = MockSecureStorageRepository();
  final String id = 'test123.txt';
  final String contents = 'This is a test note';
  Note note = Note(id: id, content: contents);

  setUpAll((){
    when(noteRepository.loadNote(id)).thenAnswer((_)=>Future.value(note));
    when(storageRepository.read(noteIdKey)).thenAnswer((_)=>Future.value(id));
    getIt.registerSingleton<FileNoteRepository>(noteRepository);
    getIt.registerSingleton<SecureStorageRepository>(storageRepository);
  });

  test('test note service', () async {
    NoteService service = NoteService();
    await service.saveNote(note);
    verify(noteRepository.saveNote(note));
    Note result = await service.loadNote();
    expect(result.content, equals(contents));
    verify(noteRepository.loadNote(id));
    await service.deleteNote();
    verify(noteRepository.deleteNote(id));
  });
}