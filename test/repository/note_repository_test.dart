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
import 'package:basic_notes/model/note.dart';
import 'package:basic_notes/repository/file/app_dir_repository.dart';
import 'package:basic_notes/repository/file/file_note_repository.dart';
import 'package:basic_notes/repository/note_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'note_repository_test.mocks.dart';

@GenerateMocks([AppDirRepository])
void main() {
  final appDirRepo = MockAppDirRepository();
  final String id = 'test123.txt';
  final String contents = 'This is a test note!';
  Note note = Note(id: id, content: contents);

  setUpAll((){
    when(appDirRepo.applicationDirectory()).thenReturn(File('test/$id').parent);
    getIt.registerSingleton<AppDirRepository>(appDirRepo);
  });

  test('test note repo', () async {
    NoteRepository repository = FileNoteRepository();
    String contents = 'This is a test note!';
    await repository.saveNote(note);
    Note? result = await repository.loadNote(id);
    expect(result!.id, equals(id));
    expect(result!.content, equals(contents));
    contents = 'This is an updated note!';
    note = note.copyWith(content: contents);
    await repository.saveNote(note);
    result = await repository.loadNote(id);
    expect(result!.content, equals(contents));
    await repository.deleteNote(id);
    File file = File('test/$id');
    expect(file.existsSync(), isFalse);
  });
}