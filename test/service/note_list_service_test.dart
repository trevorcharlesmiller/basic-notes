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
import 'package:basic_notes/model/note_list.dart';
import 'package:basic_notes/repository/file/file_note_list_repository.dart';
import 'package:basic_notes/service/note_list_service.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'note_list_service_test.mocks.dart';

@GenerateMocks([FileNoteListRepository])
void main() {
  FileNoteListRepository noteRepository = MockFileNoteListRepository();
  final String id = 'note123';
  final String contents = 'This is a test note';
  final NoteList noteList = NoteList(notes: [Note(id: id, abstract: contents)]);

  setUpAll((){
    when(noteRepository.load()).thenAnswer((_)=>Future.value(noteList));
    getIt.registerSingleton<FileNoteListRepository>(noteRepository);
  });

  test('test note list service', () async {
    NoteListService service = NoteListService();
    await service.save(noteList);
    verify(noteRepository.save(noteList));
    NoteList actual = await service.load();
    expect(actual, equals(noteList));
    expect(actual.notes.length, equals(1));
    expect(actual.notes[0].id, equals(id));
    expect(actual.notes[0].abstract, equals(contents));
    verify(noteRepository.load());
  });
}