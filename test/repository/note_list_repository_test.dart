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

import 'package:basic_notes/injection.dart';
import 'package:basic_notes/model/note_list.dart';
import 'package:basic_notes/model/note_list_note.dart';
import 'package:basic_notes/repository/file/app_dir_repository.dart';
import 'package:basic_notes/repository/file/file_note_list_repository.dart';
import 'package:basic_notes/repository/note_list_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'note_repository_test.mocks.dart';

@GenerateMocks([AppDirRepository])
void main() {
  final appDirRepo = MockAppDirRepository();

  setUpAll((){
    when(appDirRepo.applicationDirectory()).thenReturn(File('test/fakey.txt').parent);
    getIt.registerSingleton<AppDirRepository>(appDirRepo);
  });

  tearDownAll((){
    File file = File('test/note-list.json');
    file.deleteSync();
  });

  test('test note list repo', () async {
    NoteListRepository repository = FileNoteListRepository();

    NoteList list = NoteList(notes: []);
    list.notes.add(NoteListNote(id: '123', abstract: 'This is a test note...'));

    await repository.save(list);

    NoteList loaded = await repository.load();
    expect(loaded.notes, isNotEmpty);
    expect(loaded.notes.length, equals(list.notes.length));
  });
}