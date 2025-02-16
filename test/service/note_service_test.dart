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
import 'package:basic_notes/repository/note_repository.dart';
import 'package:basic_notes/service/note_service.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'note_service_test.mocks.dart';

@GenerateMocks([NoteRepository])
void main() {
  NoteRepository noteRepository = MockNoteRepository();
  final String id = 'test123.txt';
  final String contents = 'This is a test note';

  setUpAll((){
    when(noteRepository.loadNote(id)).thenAnswer((_)=>Future.value(contents));
    getIt.registerSingleton<NoteRepository>(noteRepository);
  });

  test('test note service', () async {
    NoteService service = NoteService();
    await service.saveNote(id, contents);
    verify(noteRepository.saveNote(id, contents));
    String note = await service.loadNote(id);
    expect(note, equals(contents));
    verify(noteRepository.loadNote(id));
    await service.deleteNote(id);
    verify(noteRepository.deleteNote(id));
  });
}