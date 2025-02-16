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
import 'package:basic_notes/repository/app_dir_repository.dart';
import 'package:basic_notes/repository/file_note_repository.dart';
import 'package:basic_notes/repository/note_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'note_repository_test.mocks.dart';

@GenerateMocks([AppDirRepository])
void main() {
  final appDirRepo = MockAppDirRepository();
  final String id = 'test123.txt';

  setUpAll((){
    when(appDirRepo.applicationDirectory()).thenReturn(File('test/$id').parent);
    getIt.registerSingleton<AppDirRepository>(appDirRepo);
  });

  test('test note repo', () async {
    NoteRepository repository = FileNoteRepository();
    String contents = 'This is a test note';
    await repository.saveNote(id, contents);
    String result = await repository.loadNote(id);
    expect(result, equals(contents));
    contents = 'This is an updated note!';
    await repository.saveNote(id, contents);
    result = await repository.loadNote(id);
    expect(result, equals(contents));
    await repository.deleteNote(id);
    File file = File('test/$id');
    expect(file.existsSync(), isFalse);
  });
}